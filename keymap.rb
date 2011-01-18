#!/usr/bin/env ruby

ArrayDataRegex = /(?<=\.array-data 0x4\n).*?(?=\s*\.end array-data)/m
ArrayLengthRegex = %r{(?<=const/16 v0, )(.+?)(?=\n.*?fill-array-data v0)}m
SmaliFile = 'smali/com/google/android/inputmethod/pinyin/KeyMap.smali'

def extract
  smali = File.read(SmaliFile)
  array_data = smali[ArrayDataRegex].gsub('t', '')

  File.open('KeyMap', 'w') do |f|
    array_data.each_line do |line|
      src_low_byte, src_high_byte, dst_low_byte, dst_high_byte =
        line.strip.split(/\s+/).collect {|byte| byte.to_i(16) }

      src = [src_low_byte + src_high_byte * 0x100].pack('U')
      dst = [dst_low_byte + dst_high_byte * 0x100].pack('U')

      f.puts "#{src} => #{dst}"
    end
  end

  puts 'Extract key map from KeyMap.smali to KeyMap successfully'
end

def update
  keymap = File.read('KeyMap')
  array_data = []
  keymap.each_line do |line|
    src, dst = line.strip.split(/\s*=>\s*/)
    src = '0x%xt 0x%xt' % src.unpack('U').pack('L').unpack('C C')
    dst = '0x%xt 0x%xt' % dst.unpack('U').pack('L').unpack('C C')
    array_data << "#{' ' * 8}#{src} #{dst}"
  end

  smali = File.read(SmaliFile)
  smali.gsub!(ArrayDataRegex, array_data.join("\n"))
  smali.gsub!(ArrayLengthRegex, '%#x' % array_data.size)

  File.open(SmaliFile, 'w') do |f|
    f.puts smali
  end

  puts 'Update KeyMap.smali with KeyMap successfully'
end

case ARGV.first
when 'e', 'extract'
  extract
when 'u', 'update'
  update
else
  puts <<-USAGE

Usage: #{File.basename(__FILE__)} command

    e[xtract]
        Extract key map from KeyMap.smali and save to KeyMap file.

    u[pdate]
        Update KeyMap.smali with contents of KeyMap file.

  USAGE
  exit 1
end

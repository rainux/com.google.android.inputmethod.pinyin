## 目的 ##

使用 [apktool](http://code.google.com/p/android-apktool/) 对 Google 拼音输入法 Android 版进行反向工程，在 Dalvik JVM 汇编层级微调修改它，使其更适合日常使用。

## 问题修正 ##

* 中文模式下硬件键盘上某些标点符号没有被正确映射为中文（全角）形态，尤其是在 T-Mobile G2 上。

## 细节改进 ##

* 中文模式空闲和联想状态下 Alt + Del 像系统默认行为一样删除当前行。
* 中文模式选字状态下 Alt + Del 删除所有拼音字符并回到空闲状态。

## 如何使用 ##

下载 [Google 拼音输入法 1.3.4 MOD v2](https://github.com/downloads/rainux/com.google.android.inputmethod.pinyin/Google_Pinyin_IME_v1.3.4_MOD_v2.apk)，使用 adb 工具或 Android 的 Package Manager 安装。或者 git clone 此 smali 源代码仓库自己用 apktool 编译生成 .apk 文件。

注意：**安装 MOD 版本之前必须先卸载官方版本。**

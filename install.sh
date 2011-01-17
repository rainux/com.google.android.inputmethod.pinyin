#!/bin/bash

package_name='Google_Pinyin_IME_v1.3.4_MOD'
package_apk=$package_name.apk

rm -rf dist

# Pre-smali the sources cause we're using a newer version of smali
echo Checking whether sources has changed...
for file in $(find smali -type f)
do
    if [[ $file -nt classes.dex ]]
    then
        rm -rf classes.dex
        echo Smaling...
        smali -o classes.dex smali
        break
    fi
done

apktool build . dist/$package_apk

echo Rebuilding apk file without compression to avoid issue on Arch Linux...
pushd dist > /dev/null
unzip -q $package_apk -d $package_name
rm -rf $package_apk

pushd $package_name > /dev/null
zip -0 -q -r ../$package_apk .
popd > /dev/null

echo Signing apk file...
signapk $package_apk
mv $package_name.signed.apk $package_apk

echo Installing apk file via adb...
adb install -r $package_apk
popd > /dev/null

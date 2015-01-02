del framework-res.apk
adb shell mount /system/
adb pull /system/framework/framework-res.apk .
if exist framework-res.apk (
7za a -tzip -r framework-res.apk res\*
adb push framework-res.apk /system/framework/
del framework-res.apk
@ECHO 更新成功
@PAUSE
goto :eof
)
@ECHO 更新失败，无法从您的手机获取文件
@PAUSE

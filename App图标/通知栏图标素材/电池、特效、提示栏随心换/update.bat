del framework-res.apk
adb shell mount /system/
adb pull /system/framework/framework-res.apk .
if exist framework-res.apk (
7za a -tzip -r framework-res.apk res\*
adb push framework-res.apk /system/framework/
del framework-res.apk
@ECHO ���³ɹ�
@PAUSE
goto :eof
)
@ECHO ����ʧ�ܣ��޷��������ֻ���ȡ�ļ�
@PAUSE

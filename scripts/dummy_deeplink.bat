


@echo off
echo Running dummy_deeplink.bat...
call adb shell "am start -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d http://byasis.com/details com.eytsoft.byasis_demo"
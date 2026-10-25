@echo off
cd /d "%~dp0"

chcp 65001 > nul
echo Spúšťam skompilovaný balík Cobblegame.jar pod JDK 21...
echo --------------------------------------------------------------------------

:: Definujeme priamu cestu k vášmu premenovanému JDK
set "JAVA_HOME=C:\jdk-21"
set "JDK_BIN=%JAVA_HOME%\bin\"

:: Spustenie hry cez presnú cestu k java.exe
"%JDK_BIN%java.exe" --enable-native-access=ALL-UNNAMED -Djava.library.path=libs -cp "libs\lwjgl.jar;libs\lwjgl_util.jar" -jar Cobblegame.jar

if %errorlevel% neq 0 (
    echo.
    echo [CHYBA] Program skončil s chybovým kódom %errorlevel%.
)

echo.
echo --------------------------------------------------------------------------
echo Program bol ukončený.
pause

; Start

Name "Facepager"
CRCCheck On

;覧覧覧覧覧�
;General

OutFile "Facepager_Setup_2_2.exe"
ShowInstDetails "nevershow"
ShowUninstDetails "nevershow"

;覧覧覧覧覧�
;Include Modern UI

!include "MUI2.nsh"
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\icon_facepager.ico"

;覧覧覧覧覧�
;Interface Settings

!define MUI_ABORTWARNING

;覧覧覧覧覧�
;Pages


;!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!define MUI_FINISHPAGE_RUN "$INSTDIR\Facepager.exe"
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

;覧覧覧覧覧�
;Languages

!insertmacro MUI_LANGUAGE "English"

;覧覧覧覧覧�
;Folder selection page

InstallDir "$PROGRAMFILES\Facepager"

;覧覧覧覧覧�
;Data



;覧覧覧覧覧�
;Installer Sections
Section "Facepager" Install

;Add files
SetOutPath "$INSTDIR"

File "exe.win32-2.7\Facepager.exe"
File "exe.win32-2.7\bz2.pyd"
File "exe.win32-2.7\library.zip"
File "exe.win32-2.7\mfc90.dll"
File "exe.win32-2.7\pyexpat.pyd"
File "exe.win32-2.7\pyside-python2.7.dll"
File "exe.win32-2.7\PySide.QtCore.pyd"
File "exe.win32-2.7\PySide.QtGui.pyd"
File "exe.win32-2.7\PySide.QtNetwork.pyd"
File "exe.win32-2.7\PySide.QtWebKit.pyd"
File "exe.win32-2.7\python27.dll"
File "exe.win32-2.7\pythoncom27.dll"
File "exe.win32-2.7\pywintypes27.dll"
File "exe.win32-2.7\QtCore4.dll"
File "exe.win32-2.7\QtGui4.dll"
File "exe.win32-2.7\QtNetwork4.dll"
File "exe.win32-2.7\QtWebKit4.dll"
File "exe.win32-2.7\shiboken-python2.7.dll"
File "exe.win32-2.7\sqlite3.dll"
File "exe.win32-2.7\unicodedata.pyd"
File "exe.win32-2.7\win32api.pyd"
File "exe.win32-2.7\win32pipe.pyd"
File "exe.win32-2.7\win32ui.pyd"
File "exe.win32-2.7\win32wnet.pyd"
File "exe.win32-2.7\_ctypes.pyd"
File "exe.win32-2.7\_hashlib.pyd"
File "exe.win32-2.7\_socket.pyd"
File "exe.win32-2.7\_sqlite3.pyd"
File "exe.win32-2.7\_ssl.pyd"



;create desktop shortcut
CreateShortCut "$DESKTOP\Facepager.lnk" "$INSTDIR\Facepager.exe" ""

;create start-menu items
CreateDirectory "$SMPROGRAMS\Facepager"
CreateShortCut "$SMPROGRAMS\Facepager\Uninstall.lnk" "$INSTDIR\Uninstall.exe" "" "$INSTDIR\Uninstall.exe" 0
CreateShortCut "$SMPROGRAMS\Facepager\Facepager.lnk" "$INSTDIR\Facepager.exe" "" "$INSTDIR\Pacepager.exe" 0

;write uninstall information to the registry
WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Facepager" "DisplayName" "Facepager(remove only)"
WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Facepager" "UninstallString" "$INSTDIR\Uninstall.exe"

WriteUninstaller "$INSTDIR\Uninstall.exe"

SectionEnd

;覧覧覧覧覧�
;Uninstaller Section
Section "Uninstall"

;Delete Files
RMDir /r "$INSTDIR\*.*"

;Remove the installation directory
RMDir "$INSTDIR"

;Delete Start Menu Shortcuts
Delete "$DESKTOP\Facepager.lnk"
Delete "$SMPROGRAMS\Facepager\*.*"
RmDir  "$SMPROGRAMS\Facepager"

;Delete Uninstaller And Unistall Registry Entries
DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Facepager"
DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Facepager"

SectionEnd

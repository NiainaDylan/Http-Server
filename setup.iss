; -- Inno Setup Script --

[Setup]
AppName=My Java App
AppVersion=1.0
DefaultDirName={pf}\MyHttpServer
DefaultGroupName=My Http Server App
OutputBaseFilename=HttpServerInstaller
Compression=lzma
SolidCompression=yes

[Files]
Source: "httpserver.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "public\*"; DestDir: "{app}\public"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "start.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "editconfig.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "app.conf"; DestDir: "{app}"; Flags: ignoreversion
Source: "config.bat"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\My Http Server App"; Filename: "javaw.exe"; Parameters: "-jar ""{app}\httpserver.jar"""
Name: "{group}\Uninstall My Java App"; Filename: "{uninstallexe}"

[Run]
; Run the application after installation (optional)
Filename: "{app}\start.bat"; Description: "Launch Your Application"; Flags: shellexec postinstall
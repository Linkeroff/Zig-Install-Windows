; Non-commercial use only

#define MyAppName "Zig"
#define MyAppVersion "0.16.0"
#define MyAppPublisher "Zig community"
#define MyAppURL "https://ziglang.org/"


[Setup]
AppId={{90A584F1-D4ED-4BE1-A1AA-09AD6505B68C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\zig-x86_64-windows-0.16.0
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=LICENSE
InfoBeforeFile=before.txt
InfoAfterFile=after.txt
OutputBaseFilename=Zig Installer
SetupIconFile=ZigLogo.ico
SolidCompression=yes
;ShowLanguageDialog=yes
WizardStyle=modern dynamic


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"


[Types]
Name: "custom"; Description: "Selection of components"; Flags: iscustom


[Components]
Name: "zls_0_16_0"; Description: "zls 0.16.0"; Types: custom
Name: "zig_0_16_0"; Description: "zig 0.16.0"; Types: custom


[Files]
Source: "zls.exe"; DestDir: "{app}"; Components: zls_0_16_0
Source: "zig-x86_64-windows-0.16.0\*"; DestDir: "{app}"; Components: zig_0_16_0; Flags: ignoreversion recursesubdirs createallsubdirs



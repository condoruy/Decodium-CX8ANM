; Suite CX8ANM - instalador conjunto de Decodium CX8ANM + DecoDXLog CX8ANM
; Cóndor Tecnológico - Daniel Niño CX8ANM
; Basado en Decodium (IU8LMC / 9H1SR) y DecoDXLog (IU8LMC). Licencia GPL-3.0.
;
; Contiene los dos instaladores y los ejecuta en modo silencioso, uno tras otro.
; Los dos programas ya vienen conectados de fábrica: Decodium envía los QSO por
; UDP 127.0.0.1:2237 y por DecoLink 52237, que es donde escucha DecoDXLog.

#ifndef SuiteVersion
  #define SuiteVersion "0.0.0"
#endif
#ifndef DecodiumSetup
  #error DecodiumSetup must be supplied
#endif
#ifndef DecoDXLogSetup
  #error DecoDXLogSetup must be supplied
#endif
#ifndef OutputDir
  #define OutputDir ".\output"
#endif
#ifndef SourceRoot
  #define SourceRoot "..\.."
#endif

[Setup]
AppId={{F1C8A5D0-CC8A-4E2B-9A71-5C0D0E5A1A57}
AppName=Suite CX8ANM
AppVersion={#SuiteVersion}
AppVerName=Suite CX8ANM {#SuiteVersion}
AppPublisher=CX8ANM - Cóndor Tecnológico
DefaultDirName={autopf}\Suite CX8ANM
DisableDirPage=yes
DisableProgramGroupPage=yes
Uninstallable=no
CreateAppDir=no
OutputDir={#OutputDir}
OutputBaseFilename=Suite_CX8ANM_{#SuiteVersion}_Setup_x64
SetupIconFile={#SourceRoot}\icons\windows-icons\decodium.ico
Compression=lzma2/ultra64
SolidCompression=yes
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
MinVersion=10.0.17763
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
WizardStyle=modern

[Languages]
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"

[Messages]
es.WelcomeLabel2=Se van a instalar los dos programas de la Suite CX8ANM:%n%n  • Decodium CX8ANM (FT8 / FT4 / FT2 / Q65)%n  • DecoDXLog CX8ANM (libro de guardia, diplomas, cluster y QSL)%n%nQuedan conectados entre sí automáticamente.%n%nVersión personalizada basada en Decodium (IU8LMC / 9H1SR) y DecoDXLog (IU8LMC). Licencia GPL-3.0.

[Components]
Name: "decodium";  Description: "Decodium CX8ANM - modos digitales FT8 / FT4 / FT2 / Q65"; Types: full custom; Flags: fixed
Name: "decodxlog"; Description: "DecoDXLog CX8ANM - libro de guardia"; Types: full custom

[Types]
Name: "full";   Description: "Instalación completa"
Name: "custom"; Description: "Personalizada"; Flags: iscustom

[Files]
Source: "{#DecodiumSetup}";  DestDir: "{tmp}"; DestName: "decodium_setup.exe";  Components: decodium;  Flags: deleteafterinstall
Source: "{#DecoDXLogSetup}"; DestDir: "{tmp}"; DestName: "decodxlog_setup.exe"; Components: decodxlog; Flags: deleteafterinstall

[Run]
Filename: "{tmp}\decodium_setup.exe";  Parameters: "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"; StatusMsg: "Instalando Decodium CX8ANM...";  Components: decodium;  Flags: waituntilterminated
Filename: "{tmp}\decodxlog_setup.exe"; Parameters: "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"; StatusMsg: "Instalando DecoDXLog CX8ANM..."; Components: decodxlog; Flags: waituntilterminated

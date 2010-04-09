# Microsoft Developer Studio Project File - Name="template" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=template - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "template.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "template.mak" CFG="template - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "template - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "template - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "template - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /I "../../JGE/include" /I "../../JGE/Dependencies/include" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /GF /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "../../JGE/include" /I "../../JGE/Dependencies/include" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /GF /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\template.bsc"
# ADD BSC32 /nologo /o ".\Release\template.bsc"
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib odbc32.lib odbccp32.lib libpng.lib fmodvc.lib zdll.lib jge.lib libjpeg-static-mt.lib freetype.lib /nologo /subsystem:windows /machine:IX86 /nodefaultlib:"LIBCD" /nodefaultlib:"LIBCMT" /out:"bin\template.exe" /pdbtype:sept /libpath:"..\..\JGE\Dependencies\lib" /libpath:"..\..\JGE\lib\win"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib odbc32.lib odbccp32.lib libpng.lib fmodvc.lib zdll.lib jge.lib libjpeg.lib freetype.lib /nologo /subsystem:windows /machine:IX86 /nodefaultlib:"LIBCD" /nodefaultlib:"LIBCMT" /out:"bin\template.exe" /pdbtype:sept /libpath:"..\..\JGE\Dependencies\lib" /libpath:"..\..\JGE\lib\win"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "template - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "../../JGE/include" /I "../../JGE/Dependencies/include" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "../../JGE/include" /I "../../JGE/Dependencies/include" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0xc09 /d "_DEBUG"
# ADD RSC /l 0xc09 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\template.bsc"
# ADD BSC32 /nologo /o ".\Debug\template.bsc"
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib odbc32.lib odbccp32.lib libpngd.lib fmodvc.lib jge_debug.lib libjpeg-static-mt-debug.lib freetype.lib /nologo /subsystem:windows /debug /machine:IX86 /nodefaultlib:"LIBCD" /nodefaultlib:"LIBC" /nodefaultlib:"MSVCRT" /nodefaultlib:"LIBCMTD" /out:"bin\template.exe" /pdbtype:sept /libpath:"..\..\JGE\Dependencies\lib" /libpath:"..\..\JGE\lib\win"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib odbc32.lib odbccp32.lib libpngd.lib fmodvc.lib jge_debug.lib libjpeg.lib freetype.lib /nologo /subsystem:windows /debug /machine:IX86 /nodefaultlib:"LIBCD" /nodefaultlib:"LIBC" /nodefaultlib:"MSVCRT" /nodefaultlib:"LIBCMTD" /out:"bin\template.exe" /pdbtype:sept /libpath:"..\..\JGE\Dependencies\lib" /libpath:"..\..\JGE\lib\win"
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "template - Win32 Release"
# Name "template - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=src\GameApp.cpp

!IF  "$(CFG)" == "template - Win32 Release"

# ADD CPP /nologo /GX

!ELSEIF  "$(CFG)" == "template - Win32 Debug"

# ADD CPP /nologo /GX /GZ

!ENDIF 

# End Source File
# Begin Source File

SOURCE=src\GameLauncher.cpp

!IF  "$(CFG)" == "template - Win32 Release"

# ADD CPP /nologo /GX

!ELSEIF  "$(CFG)" == "template - Win32 Debug"

# ADD CPP /nologo /GX /GZ

!ENDIF 

# End Source File
# End Group
# Begin Group "Misc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=Makefile
# End Source File
# Begin Source File

SOURCE=.\Makefile.1xx
# End Source File
# Begin Source File

SOURCE=.\Makefile.3xx
# End Source File
# Begin Source File

SOURCE=mk.bat
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=src\GameApp.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project

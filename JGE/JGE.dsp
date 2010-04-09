# Microsoft Developer Studio Project File - Name="JGE" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=JGE - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "JGE.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "JGE.mak" CFG="JGE - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "JGE - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "JGE - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "JGE - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /I "Dependencies/include" /W3 /O2 /Ob1 /D "WIN32" /D "NDEBUG" /D "_LIB" /D "_MBCS" /GF /Gy PRECOMP_VC7_TOBEREMOVED /Fp".\Release/JGE.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MD /I "Dependencies/include" /W3 /O2 /Ob1 /D "WIN32" /D "NDEBUG" /D "_LIB" /D "_MBCS" /GF /Gy PRECOMP_VC7_TOBEREMOVED /Fp".\Release/JGE.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 3081 /d "NDEBUG" 
# ADD RSC /l 3081 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"lib\win\jge.lib" 
# ADD LIB32 /nologo /out:"lib\win\jge.lib" 

!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /I "Dependencies/include" /ZI /W3 /Od /D "WIN32" /D "_DEBUG" /D "_LIB" /D "_MBCS" PRECOMP_VC7_TOBEREMOVED /Fp".\Debug/JGE.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MD /I "Dependencies/include" /ZI /W3 /Od /D "WIN32" /D "_DEBUG" /D "_LIB" /D "_MBCS" PRECOMP_VC7_TOBEREMOVED /Fp".\Debug/JGE.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 3081 /d "_DEBUG" 
# ADD RSC /l 3081 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"lib\win\jge_debug.lib" 
# ADD LIB32 /nologo /out:"lib\win\jge_debug.lib" 

!ENDIF

# Begin Target

# Name "JGE - Win32 Release"
# Name "JGE - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\src\Encoding.cpp
# End Source File
# Begin Source File

SOURCE=.\src\JAnimator.cpp
# End Source File
# Begin Source File

SOURCE=src\JApp.cpp

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=src\JDistortionMesh.cpp

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=src\JFileSystem.cpp

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=src\JGameObject.cpp

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=src\JGBKFont.cpp

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=src\JGE.cpp

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=src\JGui.cpp

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\src\JInputSystem.cpp
# End Source File
# Begin Source File

SOURCE=src\JLBFont.cpp

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\src\JMD2Model.cpp
# End Source File
# Begin Source File

SOURCE=.\src\JOBJModel.cpp
# End Source File
# Begin Source File

SOURCE=.\src\JParticle.cpp
# End Source File
# Begin Source File

SOURCE=.\src\JParticleEffect.cpp
# End Source File
# Begin Source File

SOURCE=.\src\JParticleEmitter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\JParticleSystem.cpp
# End Source File
# Begin Source File

SOURCE=.\src\win\JRenderer_Win.cpp
# End Source File
# Begin Source File

SOURCE=.\src\JResourceManager.cpp
# End Source File
# Begin Source File

SOURCE=.\src\win\JSoundSystem_Win.cpp
# End Source File
# Begin Source File

SOURCE=.\src\JSpline.cpp
# End Source File
# Begin Source File

SOURCE=src\JSprite.cpp

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\src\JTTFont.cpp
# End Source File
# Begin Source File

SOURCE=src\Vector2D.cpp

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\src\winmain.cpp
# End Source File
# Begin Group "HGE"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\hge\hgecolor.cpp
# End Source File
# Begin Source File

SOURCE=.\src\hge\hgedistort.cpp
# End Source File
# Begin Source File

SOURCE=.\src\hge\hgefont.cpp
# End Source File
# Begin Source File

SOURCE=.\src\hge\hgeparticle.cpp
# End Source File
# Begin Source File

SOURCE=.\src\hge\hgepmanager.cpp
# End Source File
# Begin Source File

SOURCE=.\src\hge\hgerect.cpp
# End Source File
# Begin Source File

SOURCE=.\src\hge\hgevector.cpp
# End Source File
# End Group
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\include\decoder_prx.h
# End Source File
# Begin Source File

SOURCE=.\include\Encoding.h
# End Source File
# Begin Source File

SOURCE=.\include\JAnimator.h
# End Source File
# Begin Source File

SOURCE=include\JApp.h
# End Source File
# Begin Source File

SOURCE=.\include\JAssert.h
# End Source File
# Begin Source File

SOURCE=.\include\JAudio.h
# End Source File
# Begin Source File

SOURCE=include\JDistortionMesh.h
# End Source File
# Begin Source File

SOURCE=include\JFileSystem.h
# End Source File
# Begin Source File

SOURCE=.\include\JGameLauncher.h
# End Source File
# Begin Source File

SOURCE=include\JGameObject.h
# End Source File
# Begin Source File

SOURCE=include\JGBKFont.h
# End Source File
# Begin Source File

SOURCE=include\JGE.h
# End Source File
# Begin Source File

SOURCE=include\JGui.h
# End Source File
# Begin Source File

SOURCE=.\include\JInputSystem.h
# End Source File
# Begin Source File

SOURCE=include\JLBFont.h
# End Source File
# Begin Source File

SOURCE=.\include\JMD2Model.h
# End Source File
# Begin Source File

SOURCE=.\include\JOBJModel.h
# End Source File
# Begin Source File

SOURCE=.\include\JParticle.h
# End Source File
# Begin Source File

SOURCE=.\include\JParticleEffect.h
# End Source File
# Begin Source File

SOURCE=.\include\JParticleEmitter.h
# End Source File
# Begin Source File

SOURCE=.\include\JParticleSystem.h
# End Source File
# Begin Source File

SOURCE=.\include\JRenderer.h
# End Source File
# Begin Source File

SOURCE=include\JResourceManager.h
# End Source File
# Begin Source File

SOURCE=.\include\JSoundSystem.h
# End Source File
# Begin Source File

SOURCE=.\include\JSpline.h
# End Source File
# Begin Source File

SOURCE=include\JSprite.h
# End Source File
# Begin Source File

SOURCE=.\include\JTTFont.h
# End Source File
# Begin Source File

SOURCE=include\JTypes.h
# End Source File
# Begin Source File

SOURCE=include\Vector2D.h
# End Source File
# Begin Source File

SOURCE=.\include\Vector3D.h
# End Source File
# Begin Source File

SOURCE=.\include\vram.h
# End Source File
# Begin Group "HGE"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\include\hge\hgecolor.h
# End Source File
# Begin Source File

SOURCE=.\include\hge\hgedistort.h
# End Source File
# Begin Source File

SOURCE=.\include\hge\hgefont.h
# End Source File
# Begin Source File

SOURCE=.\include\hge\hgeparticle.h
# End Source File
# Begin Source File

SOURCE=.\include\hge\hgerect.h
# End Source File
# Begin Source File

SOURCE=.\include\hge\hgevector.h
# End Source File
# End Group
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

SOURCE=.\Makefile.hge
# End Source File
# Begin Source File

SOURCE=readme.txt
# End Source File
# End Group
# Begin Group "Unzip"

# PROP Default_Filter ""
# Begin Source File

SOURCE=src\unzip\crypt.h
# End Source File
# Begin Source File

SOURCE=src\unzip\ioapi.c

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=src\unzip\ioapi.h
# End Source File
# Begin Source File

SOURCE=src\unzip\mztools.c

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=src\unzip\mztools.h
# End Source File
# Begin Source File

SOURCE=src\unzip\unzip.c

!IF  "$(CFG)" == "JGE - Win32 Release"

# ADD CPP /nologo /O2 /GX 
!ELSEIF  "$(CFG)" == "JGE - Win32 Debug"

# ADD CPP /nologo /Od /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=src\unzip\unzip.h
# End Source File
# End Group
# Begin Group "TinyXML"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\tinyxml\tinystr.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tinyxml\tinystr.h
# End Source File
# Begin Source File

SOURCE=.\src\tinyxml\tinyxml.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tinyxml\tinyxml.h
# End Source File
# Begin Source File

SOURCE=.\src\tinyxml\tinyxmlerror.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tinyxml\tinyxmlparser.cpp
# End Source File
# End Group
# Begin Source File

SOURCE=..\Tutorials\02.RenderingImages\Images.sln
# End Source File
# End Target
# End Project


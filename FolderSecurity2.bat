@ECHO OFF
title Folder Security 2 V1.1

:Ready
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST "Folder Security 2 Vault" goto CREATE

:CONFIRM
echo Lock all items in the vault (Y/N)
set/p "cho=>"
if %cho%==Y goto PREP
if %cho%==y goto PREP
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM

:PREP
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
:mainmenu
set savefile=on
::set Encrypt=Nothing
(set CHAR[a]=UDFM45) & (set CHAR[b]=H21DGF) & (set CHAR[c]=FDH56D) & (set CHAR[d]=FGS546) & (set CHAR[e]=JUK4JH)
(set CHAR[f]=ERG54S) & (set CHAR[g]=T5H4FD) & (set CHAR[h]=RG641G) & (set CHAR[i]=RG4F4D) & (set CHAR[j]=RT56F6)
(set CHAR[k]=VCBC3B) & (set CHAR[l]=F8G9GF) & (set CHAR[m]=FD4CJS) & (set CHAR[n]=G423FG) & (set CHAR[o]=F45GC2)
(set CHAR[p]=TH5DF5) & (set CHAR[q]=CV4F6R) & (set CHAR[r]=XF64TS) & (set CHAR[s]=X78DGT) & (set CHAR[t]=TH74SJ)
(set CHAR[u]=BCX6DF) & (set CHAR[v]=FG65SD) & (set CHAR[w]=4KL45D) & (set CHAR[x]=GFH3F2) & (set CHAR[y]=GH56GF)
(set CHAR[z]=45T1FG) & (set CHAR[1]=D4G23D) & (set CHAR[2]=GB56FG) & (set CHAR[3]=SF45GF) & (set CHAR[4]=P4FF12)
(set CHAR[5]=F6DFG1) & (set CHAR[6]=56FG4G) & (set CHAR[7]=USGFDG) & (set CHAR[8]=FKHFDG) & (set CHAR[9]=IFGJH6)
(set CHAR[0]=87H8G7) & (set CHAR[@]=G25GHF) & (set CHAR[#]=45FGFH) & (set CHAR[$]=75FG45) & (set CHAR[*]=54GDH5)
(set CHAR[(]=45F465) & (set CHAR[.]=HG56FG) & (set CHAR[,]=DF56H4) & (set CHAR[-]=F5JHFH) & (set CHAR[ ]=SGF4HF)
(set CHAR[\]=45GH45) & (set CHAR[/]=56H45G)
echo Enter A Password:
set /p Encrypt=
cls
set Encrypt2=%Encrypt%
set "EncryptOut="

:encrypt2
set char=%Encrypt2:~0,1%
set Encrypt2=%Encrypt2:~1%
set EncryptOut=%EncryptOut%!CHAR[%char%]!
if not "%Encrypt2%"=="" goto encrypt2
echo Input string: %Encrypt%
echo.
echo Output string: %EncryptOut%
set string=%EncryptOut%
set temp_str=%string%
set str_len=0

:lengthloop
if defined temp_str (
set temp_str=%temp_str:~1%
set /A str_len += 1
goto lengthloop )
echo.
if "%savefile%"=="on" echo.%EncryptOut%>>%~d0%~p0fs2pswd.txt
echo.
attrib +r +s +h fs2pswd.txt

:LOCK
ren "Folder Security 2 Vault" "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo vault locked
goto End

:UNLOCK
echo Enter password to unlock folder
set/p "pass=>"
set /p %passfinder%=<fs2pswd.txt
if NOT %pass%==%passfinder% goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" "Folder Security 2 Vault"
attrib -s -h -r fs2pswd.txt
del fs2pswd.txt /f /q
echo vault Unlocked successfully
goto End

:FAIL
echo vault unlocked unsuccessfully
sleep 3
goto end

:CREATE
md "Folder Security 2 Vault"
echo vault created successfully
sleep 3
goto End
:End

:Robert Busby
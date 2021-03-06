::PiGen

@echo off

rem Thank you for using
rem PIN GENERATOR (PiGen)
rem Generate PIN code (4 digits)
rem license to @bobdinh139

set n=10
set r=4
SET /A fact1 = %n% - 1
SET /A fact2 = %n% - 2
SET /A fact3 = %n% - 3
SET /A fact4 = %n% - 4
SET /A fact5 = %n% - 5
SET /A fact6 = %n% - 6
SET /A fact7 = %n% - 7
SET /A fact8 = %n% - 8
SET /A numer = %n%*%fact1%*%fact2%*%fact3%*%fact4%*%fact5%*%fact6%*%fact7%*%fact8%
SET /A sub = %n% - %r%
SET /A demo = %sub%*%fact5%*%fact6%*%fact7%*%fact8%
SET /A per = %numer% / %demo%  
SET /A by = %per% * 4 
SET /A kiloby = %by% / 1000 
SET /A meby = %kiloby% / 1000 
SET /A giby = %meby% / 1000 
SET /A teby = %giby% / 1000 
SET /A seco = %per% * 1
SET /A min = %seco% / 60
SET /A hour = %min% / 60
SET /A minlef = %min% %% 60

:MAIN
echo PIN generator starting...
timeout 0 > nul
pause
echo calculating...
ping n- 2 127.0.0.1>nul
echo you are about to generate: %per% numbers 
echo which is about nearly
echo %seco%:seconds 
echo %min%:minutes
echo %hour% hour(s) and %minlef% minute(s) left
echo %by%:bytes
echo %kiloby%:KB
echo %meby%:MB
echo %giby%:GB
echo %teby%:TB
:MAINl
echo Are you sure you want to continue (y/n)? : 
set/p "input=>"
if %input% ==y goto Fl
if %input% ==n goto F2
if NOT %input% ==y goto F3
if NOT %input% ==n goto F3

:F3
echo invalid choice 
goto MAINl

:F2
echo x=msgbox("The process has been cancelled" , 0+48 , "Stopped") >message.vbs
start message.vbs

timeout 0 > nul
del message.vbs
pause
exit

:Fl
set m=Doing it!
echo %m% 
set temp4=0

:STARTl
if %temp4%==5 ( set m=half-way done... )
if %temp4%==7 ( set m=more than half-way done! )
if %temp4%==9 ( set m=finishing... )

set temp3=%temp4%

set temp=0

:BIGIN

set temp1=0

:BEGIN

set /a first= %temp1% 
set second=0
set third=0
set fourth=%temp%

:SEVENEXT3

IF %third%==%temp3% goto SEVEN20
echo %first%%second%%third%%fourth% / 9999
echo %first%%second%%third%%fourth% >> "%userprofile%\Desktop\wordlist.txt"
SET /A third = %third% + 1
timeout 0 > nul
cls
echo %m% 
goto SEVENEXT3

:SEVEN20

echo %first%%second%%third%%fourth% / 9999
echo %first%%second%%third%%fourth% >> "%userprofile%\Desktop\wordlist.txt"
timeout 0 > nul
cls
echo %m% 
:SEVEN21
IF %second%==%temp3% goto SEVEN22
SET /A second = %second% + 1
echo %first%%second%%third%%fourth% / 9999
echo %first%%second%%third%%fourth% >> "%userprofile%\Desktop\wordlist.txt"
timeout 0 > nul
cls
echo %m% 
goto SEVEN21

:SEVEN22

set second=0
set third=0

:SEVEN23
IF %second%==%temp3% goto SEVEN24
SET /A second = %second% + 1
echo %first%%second%%third%%fourth% / 9999
echo %first%%second%%third%%fourth% >> "%userprofile%\Desktop\wordlist.txt"
timeout 0 > nul
cls
echo %m% 
goto SEVEN23

:SEVEN24
IF %third%==%temp3% goto SEVEN19
SET /A third = %third% + 1
echo %first%%second%%third%%fourth% / 9999
echo %first%%second%%third%%fourth% >> "%userprofile%\Desktop\wordlist.txt"
timeout 0 > nul
cls
echo %m% 
goto SEVEN24

:SEVEN19
set /a temp1 = %temp1% + 1
IF %temp1% == 10 goto EXIT
IF %temp1% LEQ 9 goto BEGIN

:EXIT
set /a temp = %temp% + 1
IF %temp% == 10 goto IXIT
IF %temp% LEQ 9 goto BIGIN

:IXIT
set /a temp4 = %temp4% + 1
IF %temp4% == 10 goto ENDl
IF %temp4% LEQ 9 goto STARTl

:ENDl
cls
echo %first%%second%%third%%fourth% / 9999
color 2
echo [*] Done!
color 7
echo check the file "wordlist" in your desktop.
color 4
echo Deleting duplicated letters...
color 7
findstr /v /i /c:"0000" wordlist.txt > w0rdlist.txt
timeout 0 > nul
echo patching files...
echo 0000 >> "%userprofile%\Desktop\w0rdlist.txt"
timeout 0 > nul
color 2
echo New file without duplicated letters is located at /Desktop/w0rdlist.txt
color 4
echo File with duplicated letters is found at /Desktop/wordlist.txt
color 2
echo deleting "wordlist"...
color 7
pushd "%userprofile%/Desktop"
del wordlist.txt
popd
timeout 0 > nul
echo Opening file "w0rdlist" for you ...
timeout 1 > nul
start %userprofile%/Desktop/w0rdlist.txt
pause 

echo x=msgbox("Remember to feedback, stay tuned for similar programs!" , 1+64 , "Thank you") >message.vbs
start message.vbs

timeout 0 > nul
del message.vbs
exit

@echo off
color 0a
title Meedo - Gerador de Passwords 1.0

cls
cls
echo _______________________________________________________________________________
echo.
echo                       -                               -
echo                       * Gerador de Passwords by Meedo *
echo                       -                               -
echo _______________________________________________________________________________
echo                 ```....```                            -:/+o++/:-
echo           ``..---:-::::///:-.`                    `./ossssyyyyyys+:``
echo         `.---.-:::////+++oooo+/-` `             `.:/ooooooo++/++osoo.`
echo      ``.--...::::///+++++/+ossss+:.`           `.-:+o+:```--```./+ooo-
echo     ``:-.--:-//:-.``  ``.:/+++syys/:``          -.:oo`          `++o+s
echo     .:--::-/:``           ``./+oyyy//`         `::/++`          `+yyyy
echo    `/-::::/`                 `.+oyys/+`        `:///o`          `oyyoy
echo    ::://:+``                   `+shyo/:        `./+++/```` `` `.oyyoo:
echo   `/:///o` `                   ``oyys++``       `.+oooo::-/++++yys+o/
echo   `+/++/o`                     ` +yyyoo``       ```:+oss/./osso+/o+.`
echo   `+/+o/o                      ` +yyyoo`           ``-://-+sss//:``
echo   `+/oo+o                        +yhyso`               -::+syy```
echo   `+/os+o                        +yyyso`               `:./os/
echo `:/++++++//+++ooooooooooooooooooosyyyys+:`             `:./os/`
echo  :oooo+++oosssssssssyyyyssyyysssysyhsooys              `:./os/
echo ovoooosodmmdmmmmmmmmmmddddddddddddddosssyo             .:-/oso`
echo osssohhddddddddddddddddddddddddddddhhossso             ./:+syo`
echo oooosddddddddddddddddddddddddddddddddooooo             `:./oy/
echo o+++sdddddddddddyysossosyydddddddddddo+++o             .::/oso`
echo o///sdddddddddhsyshmNNmysyshdddddddddo/++s             ./:+sys`
echo o:::sdddddddhdosssNNNNmmoosodhhhhhdddo+++s             `:./oy+`` `
echo o//:sddhhhhhhh+oo+hmNmdyoos+ddddmmmmmo++os             `:./oyo//:::
echo oooosmdmdmddddoysssdmmyssssommmmmmmmmoooos             `:./ossoo+/:
echo ssoosddddddddddoooohmdyooooddddddddddossss             `:./oys+++/:
echo sssssdddddddddddhso++++oshdddddddddddsssss             `:./oys/+/..
echo syyysddddddddddddddddddddddddddddddddsyyss             `:./oys:/+//
echo syyysddddddddddddddddddddddddddddddddsysos`            `:./oys:/.``
echo yyyysyydddddddddddddddddddddddddddhyyssooy             `:./oys:/``
echo yysooysyyyyyyyyyyyyyyyyyyyyyyyyyyyyssooooy             `:./oyo:::.`
echo /ssosyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyysoosy:             `:./oyo://:-
echo  `------------:::::::::::::::::::::::::-`              `:./oyo::::-
echo                                                        `:-/os/
echo _______________________________________________________________________________
echo.
echo         Aperta uma tecla aleatoria para abrir o Gerador de Passwords!
pause >nul
:continue
cls
cls

:Start
cls
echo.
echo ===================================
echo Escolha uma opcao
echo ===================================
echo [1] Password aleatoria
echo.
set /p input= Escolha 1 para gerar uma password aleatoria:
if %input%==1 goto A if not goto Start

:A
cls
Setlocal EnableDelayedExpansion
set _RNDLength=12
set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
set _Str=%_Alphanumeric%987654321

:_LenLoop
if not "%_Str:~18%"=="" set _Str=%_Str:~9%& set /A _Len+=9& goto :_LenLoop
set _tmp=%_Str:~9,1%
set /A _Len=_Len+_tmp
set _count=0
set _RndAlphaNum=

:_loop
set /a _count+=1
set _RND=%Random%
set /A _RND=_RND%%%_Len%
set _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
if !_count! lss %_RNDLength% goto _loop
echo.
echo ===================================
echo Password gerada: !_RndAlphaNum!
echo Nao a pode perder :v
echo ===================================
echo.
pause
exit

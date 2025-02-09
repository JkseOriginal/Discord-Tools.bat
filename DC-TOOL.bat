@echo off
title Made By Jkse Inspired by Wock Codes
chcp 65001 >nul
Color F  
:menu
cls
echo 				██████╗  ██████╗    ████████╗ ██████╗  ██████╗ ██╗     
echo 				██╔══██╗██╔════╝    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo 				██║  ██║██║            ██║   ██║   ██║██║   ██║██║     
echo 				██║  ██║██║            ██║   ██║   ██║██║   ██║██║     
echo 				██████╔╝╚██████╗       ██║   ╚██████╔╝╚██████╔╝███████╗
echo 				╚═════╝  ╚═════╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo. 
echo.
echo ┌────────────────────────────────┐
echo │            1 or 2              │
echo │ 1. Org                         │   
echo │ 2. WH2                         │   
echo └────────────────────────────────┘
set /p choice=Enter your choice (1 or 2)
pause


if "%choice%"=="1" goto WebhookSpammer
if "%choice%"=="2" goto WHS2

echo invalid, 1 or 2
timeout /t 2 /nobreak >nul
goto menu
cls
pause


:WebhookSpammer
cls
Color F 
echo b   d8b   db d88888b d8888b. db   db  .d88b.   .d88b.  db   dD      .d8888. d8888b.  .d8b.  .88b  d88. .88b  d88. d88888b d8888b. 
echo 88   I8I   88 88'     88  `8D 88   88 .8P  Y8. .8P  Y8. 88 ,8P'      88'  YP 88  `8D d8' `8b 88'YbdP`88 88'YbdP`88 88'     88  `8D 
echo 88   I8I   88 88ooooo 88oooY' 88ooo88 88    88 88    88 88,8P        `8bo.   88oodD' 88ooo88 88  88  88 88  88  88 88ooooo 88oobY' 
echo Y8   I8I   88 88~~~~~ 88~~~b. 88~~~88 88    88 88    88 88`8b          `Y8b. 88~~~   88~~~88 88  88  88 88  88  88 88~~~~~ 88`8b   
echo `8b d8'8b d8' 88.     88   8D 88   88 `8b  d8' `8b  d8' 88 `88.      db   8D 88      88   88 88  88  88 88  88  88 88.     88 `88. 
echo  `8b8' `8d8'  Y88888P Y8888P' YP   YP  `Y88P'   `Y88P'  YP   YD      `8888Y' 88      YP   YP YP  YP  YP YP  YP  YP Y88888P 88   YD 
echo.
echo.
echo.                                                                                                                          
set /p webhook=Add the webhook to spam:
set /p message=Add the message to spam:
set /p delay=Put a delay in seconds (0=no delay):

if %delay%==0 (
    goto no_delay_spam
) else (
    goto delay_spam
)

:no_delay_spam
curl --insecure -X POST -H "Content-Type: application/json" -d "{\"content\":\"%message%\"}" %webhook%
echo Message sent 
goto :no_delay_spam

:delay_spam
echo Sending Message...
curl --insecure -X POST -H "Content-Type: application/json" -d "{\"content\":\"%message%\"}" %webhook%
ping 127.0.0.1 -n %delay% > nul 
goto :delay_spam


:WHS2
cls
chcp 65001 >nul
color F 


cls
echo ┌────────────────────────────────┐
echo │            SPAMMER             │
echo ├────────────────────────────────┤
echo │ 1. Exit                        │
echo │ 2. Discord webhook spammer     │
echo └────────────────────────────────┘
set /p choice=Enter your choice: 

if "%choice%"=="1" exit /b
if "%choice%"=="2" goto messagesender
goto menu

:messagesender
cls
echo ┌────────────────────────────────┐
echo │     Discord Webhook Spammer    │
echo ├────────────────────────────────┤
set /p "webhook=│ Enter Discord webhook URL: "
set /p "message=│ Enter the message to send: "
set /p "num_times=│ Enter the number of times to send: "

:: Loop to send the message multiple times
for /l %%n in (1,1,%num_times%) do (
    echo Sending message %%n/%num_times%...
    curl --insecure -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
    timeout /t 1 >nul 2>&1
)

echo.
echo ┌────────────────────────────────┐
echo │  Messages sent successfully!   │
echo └────────────────────────────────┘
pause
goto menu


                                                 
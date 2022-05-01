:menu
@echo off & color 0f & cls & title start.bat
mode 60,20
color 02
echo.              Start.bat creates by Slyden#6851                 
echo.____________________________________________________________         
echo.
echo        [1] Lancer Serveur     [2] Creer une backup
echo.
echo                  [3] Supprimer cache    
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (goto :4)
goto :menu
exit

:1
color 02
echo.
echo Lancement du serveur en cours...
ping localhost -n 2 >nul
echo.
cd /d C:\Base
C:\Base\FXServer.exe +exec server.cfg
rem Changez les 2 chemins d'accès ci-dessus
pause
exit

:2
color 02
echo -----------------------------------
echo Creation d'une backup en cours...
echo -----------------------------------
ping localhost -n 5 >nul
XCOPY C:\Base C:\Base-backup\ /m /e /y 
rem Changez les 2 chemins d'accès ci-dessus
echo.
echo Backup cree avec succes !
ping localhost -n 3 >nul
echo.
echo Pour fermer cette fenetre merci d'appuyer sur une touche.
pause
exit

:3
color 02
echo.
echo Suppression du cache en cours...
RMDIR /s /q "C:\Base\cache"
rem Changez le chemin d'accès ci-dessus
echo.
ping localhost -n 2 >nul
echo Dossier cache supprime !
echo.
echo Pour fermer cette fenetre merci d'appuyer sur une touche.
pause
exit

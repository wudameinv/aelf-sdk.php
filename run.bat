@echo off
 
PowerShell -Command "&{Set-ExecutionPolicy RemoteSigned}"
 

 
PowerShell .\test1.ps1
 
PowerShell -Command "&{Set-ExecutionPolicy Restricted}"
 

Pause

@echo off
setlocal enabledelayedexpansion
set var[0]=https://caged.maisemprego.mte.gov.br/ 
set var[1]=http://caged.maisemprego.mte.gov.br/ 
set var[2]=https://cmt.caixa.gov.br/ 
set var[3]=http://cmt.caixa.gov.br/ 
set var[4]=https://cmt.caixa.gov.br/cse/ 
set var[5]=http://cmt.caixa.gov.br/cse/ 
set var[6]=https://conectividade.caixa.gov.br/ 
set var[7]=http://conectividade.caixa.gov.br/ 
set var[8]=https://caixa.gov.br/
set diretorio=%systemdrive%\users\%username%\appdata\locallow\sun\java\deployment\security\
cd %diretorio%
copy exception.sites exception.sites_BKP
del exception.sites
(for /l %%a in (0,1,8) do (
echo !var[%%a]! >> exception.sites
))
cls
echo "Links adicionados com sucesso!"
pause
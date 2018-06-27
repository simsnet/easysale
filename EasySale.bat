@echo off
cls
title EasySale POS v2.0b
color f
rem EasySale POS - The free, easy-to-use, Batch point-of-sale software
rem (C)2015
:m
cls
type splashscreen.txt
echo Operation   Keyword
echo -------------------
echo Sale       -   s
echo Sales Log  -   l
echo Readme     -   r
echo Exit       -   x
echo -------------------
goto i
:i
set /p kywrd=Enter the keyword of selected operation here:
if %kywrd%==s (
	goto s
) else if %kywrd%==l (
	goto log
) else if %kywrd%==r (
	goto r
) else if %kywrd%==x (
	goto x
) else (
	goto er2)
:er2
echo Incorrect keyword.
pause
cls
goto m
:s
cls
echo Sale
echo ----
set /p item1=Enter item:
set /p price1=Enter price:
set /p item2=Enter item:
set /p price2=Enter price:
set /p item3=Enter item:
set /p price3=Enter price:
set /p item4=Enter item:
set /p price4=Enter price:
set /p item5=Enter item:
set /p price5=Enter price:
goto pay
:pay
set /a total=%price1%+%price2%+%price3%+%price4%+%price5%
cls
echo The total is listed on receipt.           EASYSALE RECEIPT           
echo Please count the received money.          %date%, %time%             
echo Enter paid amount below.                  %item1% -=-=-=-=-=-=-=- %price1%   
echo                                           %item2% -=-=-=-=-=-=-=- %price2%   
echo                                           %item3% -=-=-=-=-=-=-=- %price3%   
echo                                           %item4% -=-=-=-=-=-=-=- %price4%   
echo                                           %item5% -=-=-=-=-=-=-=- %price5%
echo                                           SUBTOTAL:               %total%    
echo                                           TAX:           -NOT APPLICABLE-    
echo                                           PAID:                   -------    
echo                                           CHANGE:                 -------
set /p paidtotal=Paid:
cls
set /a change=%paidtotal%-%total%
echo Change is listed in its column.           EASYSALE RECEIPT            
echo                                           %date%, %time%             
echo                                           %item1% -=-=-=-=-=-=-=- %price1%   
echo                                           %item2% -=-=-=-=-=-=-=- %price2%   
echo                                           %item3% -=-=-=-=-=-=-=- %price3%   
echo                                           %item4% -=-=-=-=-=-=-=- %price4%   
echo                                           %item5% -=-=-=-=-=-=-=- %price5%
echo                                           SUBTOTAL:               %total%    
echo                                           TAX:           -NOT APPLICABLE-    
echo                                           PAID:                   %paidtotal%    
echo Please pay amount listed:                 CHANGE:                 %change%
pause
rem BEGIN SALE RECEIPT
echo ################################    >> Receipts.es
echo EASYSALE RECEIPT                    >> Receipts.es
echo %date%, %time%                      >> Receipts.es
echo %item1% -=-=-=-=-=-=-=- %price1%    >> Receipts.es
echo %item2% -=-=-=-=-=-=-=- %price2%    >> Receipts.es
echo %item3% -=-=-=-=-=-=-=- %price3%    >> Receipts.es
echo %item4% -=-=-=-=-=-=-=- %price4%    >> Receipts.es
echo %item5% -=-=-=-=-=-=-=- %price5%    >> Receipts.es
echo SUBTOTAL:               %total%     >> Receipts.es
echo TAX:           -NOT APPLICABLE-     >> Receipts.es
echo PAID:                   %paidtotal% >> Receipts.es
echo CHANGE:                 %change%    >> Receipts.es
echo ################################    >> Receipts.es
rem END SALE RECEIPT
cls
set item1=
set price1=
set item2=
set price2=
set item3=
set price3=
set item4=
set price4=
set item5=
set price5=
set total=
set paidtotal=
set change=
echo Receipt generated and saved to Receipts.es!
echo Thank customer for purchase!
echo -=-=-
echo Pressing a key will return to menu for new transaction.
pause
cls
goto m
:log
cls
type Receipts.es
pause
goto m
:r
cls
type README.txt
pause
goto m
:x
cls
echo EasySale will now close.
pause
exit
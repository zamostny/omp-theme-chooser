function Show-Menu
{
    param (
        [string]$Title = 'Select New Oh-My-Posh Theme'
    )
    Clear-Host
    Write-Host "========================================"
    Write-Host "+      $Title     +"
    Write-Host "========================================"
    Write-Host ""
    Write-Host "1: bubblesextra"
    Write-Host "2: bubblesline"
    Write-Host "3: aliens"
    Write-Host "4: craver"
    Write-Host "5: kali"
    Write-Host "6: material"
    Write-Host "7: pararussel"
    Write-Host ""
    Write-Host "Q: Press 'Q' to quit."
}

do
 {
    Show-Menu -Title 'Select New Oh-My-Posh Theme'
    $selection = Read-Host "Please choose a theme"
    switch ($selection)
     {
         '1' {
             oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/bubblesextra.omp.json" | Invoke-Expression
         } '2' {
            oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/bubblesline.omp.json" | Invoke-Expression
         } '3' {
            oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/aliens.omp.json" | Invoke-Expression
         } '4' {
            oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/craver.omp.json" | Invoke-Expression
         } '5' {
            oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/kali.omp.json" | Invoke-Expression
         } '6' {
            oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/material.omp.json" | Invoke-Expression
         } '7' {
            oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/pararussel.omp.json" | Invoke-Expression
         }
     }
     #pause
 }
 until ($selection -eq 'q')

 
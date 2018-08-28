function global:lambdapr() {
  # hard code for your username
  git clone https://github.com/FireInjun/"$args".git
  Set-Location .\$args\
  New-Item INIT
  git add .

  $a = (Get-Date -Format g).ToString()
  git commit -m "INIT"
  git push
  Clear-Host
  Start-Process chrome https://github.com/LambdaSchool/"$args"/compare
  write-output ("$a" + "  Go Make the PR now.")
}

Export-ModuleMember -function lambdapr

$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = 'http://codestuff.obninsk.ru/Starter.zip'
  softwareName  = 'Starter*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  checksum      = 'd8cc50c198d0e9e2e133844219ad2721f6970087a6069db12c77a64bcd4ea594'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
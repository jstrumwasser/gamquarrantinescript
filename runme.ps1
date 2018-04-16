#rename qfiles.csv as date qfilesdate.csv#
gam redirect csv .\qfiles.csv user quarrantine@challengecharterschools.org print filelist id name permissions

#Debug
#Write-Host "Press any key to continue ..."
#$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

#rename deleteqfiles.csv as date deleteqfilesdate.csv
python GetUserNonOwnerDrivePermissions.py .\qfiles.csv .\deleteqfiles.csv

#Debug
#Write-Host "Press any key to continue ..."
#$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

#rename deleteqfiles.csv as date deleteqfilesdate.csv
gam csvkmd users .\deleteqfiles.csv keyfield Owner subkeyfield driveFileId datafield permissionIds delimiter "," delete permissions csvsubkey driveFileId csvdata permissionIds

#Debug
#Write-Host "Press any key to continue ..."
#$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

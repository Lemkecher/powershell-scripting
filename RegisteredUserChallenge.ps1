function getwinver 

{ winver }

function set-winver {
    $owner = read-host "enter the new owner (press enter if u dont want to change)"
    $organization = read-host "enter the new organisation (press enter if you dont want any change)"
    push-Location
    set-location 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion'
    if ($owner){set-ItemProperty.RegisteredOwner $owner} 
    if ($organisation){set-ItemProperty.RegisteredOrganization $organization}
    pop-location
    getwinver 
}
set-winver

# the changes wont aquire because of the protected license of the systeme


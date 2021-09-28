function Show-Menu
{
    param (
        [string]$Title = 'back to school'
    )
    Clear-Host
    Write-Host "================ $title ================"
    
    Write-Host "1: Press '1' to calculate the missing length of a triangle."
    Write-Host "2: Press '2' to Calculate the area of a circle with a given diameter ."
    Write-Host "3: Press '3' to Calculate the volume of a cylinder from a given diameter and height. ."
    Write-Host "4: Press '4' to Calculate the volume of a sphere with a given diameter ."
    write-host "5: Press '5' to Calculate the factorial of an integer ."
    write-host "Q: Press 'Q' to exit"
    $selection = Read-Host "Please make a selection"
     switch ($selection)
 {
     '1' {
         'You chose option #1'
     } '2' {
         'pythagore'
     } '3' {
         'You chose option #3'
     } '4' {
         'You chose option #4'
         
     }  '5' {'You chose option #5'
     }  'q' { return
        
     }
  }   
}
Show-Menu



function pythagore {
    param(
        $Length1 = $(Read-Host "enter first length"),
        $Length2 = $(Read-Host "enter second length")
    )
    
    if ($Length1 -lt 1) { $Length1 = 1 } 
    if ($Length2 -lt 1) { $Length2 = 1 }
     $length3 = ([math]::Sqrt(([math]::Pow($Length1, 2)) + (([math]::Pow($Length2, 2)))))
     write-host "The missing length is $length3"
}


pythagore 

$diameter = read-host "enter the diameter of the circle"
function areaOfCircle {
     if ($Diameter -lt 1) { $Diameter = 1 } 
     $areaOfCircle = (([math]::PI * ([math]::Pow($Diameter, 2))) / 4)
     Write-Host "The area of the circler is $areaOfCircle"
    
}
areaOfCircle
$Diameter2 = Read-Host "Please enter the diameter of the circle  "
$Height = Read-Host "Please enter the height of the cylinder "

function VolumeOfCylinder  {

    if ($Diameter2 -lt 1) { $Diameter2 = 1 } 
    if ($Height -lt 1) { $Height = 1 } 

    $volume = (([math]::PI * ([math]::Pow($Diameter2, 2))) * $Height)
    Write-host "The volumne of the cylinder is $Volume" 
}

VolumeOfCylinder 
$Diameter3 = Read-Host "Please enter the diameter of the circle "

function VolumeOfSphere  {

    if ($Diameter3 -lt 1) { $Diameter3 = 1 } 

    $Volume = (([math]::Pow(($Diameter3 / 2 ), 3)) * ([math]::PI * 1.1))
    Write-host "The volume of the sphere is $Volume" 
}

VolumeOfSphere 


$Integer = Read-Host "Please enter an integer"  
function Factorial  {
    if ($Integer -lt 0) { $result = 0 }

    elseif ($Integer -le 1) { $result = 1 }

    else {
        $result = $Integer * (Factorial($Integer - 1))
    }

    return $result
}

Factorial 
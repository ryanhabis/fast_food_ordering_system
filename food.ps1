#order_food_script
#******************
# Header

# 1) Introduction: 
#                    Creator: Ryan Habis - D00245309
#                    Purpose/Descripting: This script alows customers to order a meal from a fast food restaurant
#                    Version: 3
#                    Last edited: 11/05/2022
#                    Copyright: Ryan Habis

# 2) Purpose of the script:
#
# 3) Order or opperation

#   A) Show costumer list of food items.

#   B) Ask customer to select an item.

#   C) Does the customer want something else?

#   D) If yes have a while loop going until the answer is no

# 4) Problems that arrose:
# The most common problem that arrose was mostly syntax error for example in the if statment I accidently
# typed in -le where it should have been -eq.

# Small issues like that accured but after analising the code I ended up easly trouble shooting the script to a working state

# 5) Conclusion:
# This script mimics' a fast food ordering restaurants
#
#******************

#Body

#Here I am assigning variables 
$menu = "Burger" , "Chips" , "Onion rings" , "Cola"

$burger = "Burger"
$chips = "Chips"
$onionRings = "Onion rings"
$cola = "Cola"

$costBurger = 5
$costChips = 2
$costOnionRings = 3
$costCola = 1

#This will output text to the user
Write-Host 'These are what is on the menu:'
$x=0
$bill=0
#This will loop through the menu items and list them 1 to 4
foreach ($i in $menu)
{
    $x++
    Write-Host $x $i 
}

#This is a do while loop it will keep repeating until the user says no
DO  
{   

#Asking the user to select an item from the menu 1 to 4
$item = Read-Host "Select one of the items listed 1 to 4"

Write-Host $item

# If the user selected a option 1 which is a burger they will be shown what they selected and the cost of it 
# As well it add it to the bill total
if($item -eq 1)
{
    write-host("You chose the $burger")
    write-host("The $burger costs $costBurger euro") 
    $bill = $bill + $costBurger

}

# If the user selected a option 2 which is chips they will be shown what they selected and the cost of it 
# As well it add it to the bill total
elseif($item -eq 2)
{
    write-host("You chose the $chips")
    write-host("The $chips costs $chips euro") 
    $bill = $bill + $costChips

     
} 

# If the user selected a option 3 which is a onion rings they will be shown what they selected and the cost of it 
# As well it add it to the bill total
elseif($item -eq 3)
{
    write-host("You chose the $onionRings") 
    write-host("The $onionRings costs $costOnionRings euro") 
    $bill = $bill + $costOnionRings

}

# If the user selected a option 4 which is a soft drink named cola they will be shown what they selected and the cost of it 
# As well it add it to the bill total
elseif($item -eq 4)
{
    write-host('You chose the ' + $cola + ' drink') 
    Write-Host('The ' + $cola + ' drink costs '  + $costCola + ' euro')
    $bill = $bill + $costCola

}

#This else statment tells the user that they have to pick an option from 1 to 4 anything is wont work
else 
{
    write-host("Error please select an option from 1 - 4") 
}

#Here the user is being asked if they would like to pick another item of the menu
$another = Read-Host "Would you like to pick another? Y/N"
} 

#If the user said yes either a lowercase y or uppercase the while loop will start over untill the user selects n or anyother
#charrecter
While ($another -eq 'Y' -OR $another -eq 'y')
{
}

#The user is being asked if they would like a digital copy of the reciept  
$recieptPrint = Read-Host "Would you like a copy of the reciept? Y/N"

#If the user said yes either a lowercase y or uppercase Y it will make a textfile on the desktop of the reciept and print 
#it to screen

#If the user said no it will print out the reciept on the screen and it wont make a saved copy on the desktop
if($recieptPrint -eq 'Y' -OR $recieptPrint -eq 'y')
{

    write-host("A copy of your reciept has been sent to your desktop")


    Add-Content -Path "C:\Users\Administrator\Desktop\reciept.txt" -Value "*******************" -Force
    Add-Content -Path "C:\Users\Administrator\Desktop\reciept.txt" -Value "Reciept" -Force
    Add-Content -Path "C:\Users\Administrator\Desktop\reciept.txt" -Value "Your total is $bill euro" -Force
    Add-Content -Path "C:\Users\Administrator\Desktop\reciept.txt" -Value "*******************" -Force

}

#This is a few lines printing a reciept on the screen
Write-Host "*******************"
Write-Host "reciept"

Write-Host "Your total is " $bill " euro"

Write-Host "*******************"

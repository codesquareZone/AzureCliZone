$rg_name = "fromps1"
$location = "eastus"
$vm_image = "Ubuntu2204"

$rg = New-AzResourceGroup -Name $rg_name -Location $location 

New-AzVm `
    -ResourceGroupName $rg.ResourceGroupName `
    -Name 'myVM' `
    -Location $location `
    -image $vm_image `
    -size Standard_B1s `
    -PublicIpAddressName myPubIP `
    -OpenPorts 80 `
    
   
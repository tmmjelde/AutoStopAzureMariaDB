#Documentation:
#https://learn.microsoft.com/en-us/cli/azure/mariadb/server?view=azure-cli-latest#az-mariadb-server-list

#Log in with the managed identity
az login --identity --only-show-errors

#Get all the mariadb servers
$json = az mariadb server list | convertfrom-json

#Filter out the running and stopped servers
$RunningDBs = $json | where {$_.userVisibleState -eq 'Ready'}
$StoppedDBs = $json | where {$_.userVisibleState -eq 'Stopped'}
#Write some output for the stopped servers
foreach ($db in $StoppedDBs){
	write-host "Already stopped: $($db.name)"
}
#Write output for the running servers and stop them. 
foreach ($db in $RunningDBs){
	write-host "Stopping server $($db.name)"
	az mariadb server stop --resource-group $db.resourceGroup --name $db.name --only-show-errors
}

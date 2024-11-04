# AutoStopAzureMariaDB
Automation account automatically stops running MariaDB servers

Prerequisites:
Create an automation account with a managed identity.\n
Assign "Contributor" permissions to the managed identity on the MariaDB servers.\n
Create a runbook using Powershell - I used the latest runtime environment (7.2)\n
Link the runbook to a schedule. 

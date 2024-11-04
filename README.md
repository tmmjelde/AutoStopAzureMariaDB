# AutoStopAzureMariaDB
Automation account automatically stops running MariaDB servers

Prerequisites:
Create an automation account with a managed identity.

Assign "Contributor" permissions to the managed identity on the MariaDB servers.

Create a runbook using Powershell - I used the latest runtime environment (7.2)

Link the runbook to a schedule. 

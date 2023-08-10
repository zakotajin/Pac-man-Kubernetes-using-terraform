Requirements for this project are as follows:
- an aws account
- terraform installed.
- aws-cli installed and configured.
- Kubectl installed.

After provisioning of the pre-requisites:
- first provision of eks cluster.
- Secondly deploy pac-man web application using terraform commands.

Notes:
- This web app is provisioned using one replicas. replicas can be changed according to your need by changing the replicas parameters in the deployment.tf files.

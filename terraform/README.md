# Terraform Experiment Cluster Setup

<ol>
<li>Please go into the main.tf file. Set the project id to the GCP project you created, as well as the region and zone.</li>
<li>Change the variables gce_ssh_user.default to your username and gce_ssh_pub_key_file.default to your key location</li>
<li>Execute the command 'terraform apply' to build the infrastructure. Please be aware that running this command will charge a certain amount of money, regarding on the execution time.</li>
<li>Get the filestore ip address and put it into the pv.yaml file under nfs.server</li>
<li>Run: kubectl apply -f pv.yaml & kubectl apply -f pvc.yaml</li>
<li>Create a clusterrolebinding with the command: kubectl create clusterrolebinding cluster-admin-default-sa  --clusterrole=cluster-admin --serviceaccount=default:default </li>
<li>Execute the experiments.</li>
<li>Destroy the infrastructure through running 'terraform destroy'</li>
</ol>
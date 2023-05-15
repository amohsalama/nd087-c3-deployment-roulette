# Create S3 bucket
# update _config.tf under starter/infra
# rm .terraform.lock.hcl as it's have old version of aws
# Could not retrieve the list of available versions for provider hashicorp/aws: locked provider registry.terraform.io/hashicorp/aws 3.56.0 does not match configured
#│ version constraint >= 3.72.0; must use terraform init -upgrade to allow selection of new versions
cd starter/infra
terraform init -reconfigure
terraform apply -auto-approve
aws eks --region us-east-2 update-kubeconfig --name udacity-cluster
kubectl config use-context arn:aws:eks:us-east-2:749670359030:cluster/udacity-cluster
kubectl get pods --all-namespaces
kubectl config set-context --current --namespace=udacity
cd ../../
./initialize_k8s.sh
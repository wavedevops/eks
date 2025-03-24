dev:
	rm -rf .terraform .terraform.lock.hcl
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -auto-approve -var-file=env-dev/inputs.tfvars
	rm -rf .terraform .terraform.lock.hcl
#prod:
#	rm -rf .terraform
#	terraform init -backend-config=state.tfvars
#	terraform apply -auto-approve -var-file=env-prod/inputs.tfvars

dev-destroy:
	rm -rf .terraform
	terraform init -backend-config=state.tfvars
	terraform destroy -auto-approve -var-file=env-dev/inputs.tfvars

#prod-destroy:
#	rm -rf .terraform
#	terraform init -backend-config=state.tfvars
#	terraform destroy -auto-approve -var-file=env-prod/inputs.tfvars

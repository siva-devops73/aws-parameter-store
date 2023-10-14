apply:
	@rm -rf .terraform
	@git pull
	@terraform init
	@terraform apply -auto-approve

destroy:
	@rm -rf .terraform
	@git pull
	@terraform init
	@terraform destroy -auto-approve


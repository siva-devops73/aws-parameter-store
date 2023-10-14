dev:
	@rm -rf .terraform
	@git pull
	@terraform init
	@terraform apply -auto-approve

dev-destroy:
	@rm -rf .terraform
	@git pull
	@terraform init
	@terraform destroy -auto-approve


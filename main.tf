resource "aws_ssm_parameter" "params" {
  count = lengtn(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name = "demo1", vale = "demo1", type = "string" }
    { name = "demo1", vale = "demo1", type = "string" }
  ]
}
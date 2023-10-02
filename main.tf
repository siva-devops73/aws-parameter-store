resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
  overwrite = true
  key_id = "4c8938fc-8309-49ca-b140-218281d4c8da"

}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "https://catalogue-dev.devops73.store/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "https://user-dev.devops73.store/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "https://cart-dev.devops73.store/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "https://shipping-dev.devops73.store/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "https://payment-dev.devops73.store/", type = "String" },


    { name = "roboshop.dev.cart.redis_host", value = "elasticache-dev.ain9qp.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.devops73.store", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "80", type = "String" },


    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cjvkzflxlvkt.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.dev.catalogue.docdb_endpoint", value = "docdb-dev.cluster-cjvkzflxlvkt.us-east-1.docdb.amazonaws.com", type = "String" },


    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.devops73.store", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.devops73.store", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devops73.store", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },


    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devops73.store:80", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "rds-dev.cluster-cjvkzflxlvkt.us-east-1.rds.amazonaws.com", type = "String" },


    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "elasticache-dev.ain9qp.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cjvkzflxlvkt.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.dev.user.docdb_endpoint", value = "docdb-dev.cluster-cjvkzflxlvkt.us-east-1.docdb.amazonaws.com", type = "String" },


    ## dispatch
    { name = "roboshop.dev.dispatch.amqp_host", value = "rabbitmq-dev.devops73.store", type = "String" },
    { name = "roboshop.dev.dispatch.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.endpoint", value = "rds-dev.cluster-cjvkzflxlvkt.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },



    ### password will be never part of  git repos, usually in organization we create them manually, meaning whom ever have access they will provision secrets in parameter store.
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.dispatch.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
  ]
}
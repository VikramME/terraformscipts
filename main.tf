provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.aws_region}"
 }

resource "aws_secretsmanager_secret_version" "account/variables" {
  secret_id     = "${aws_secretsmanager_secret.account/variables.id}"
  secret_string = "{var.secret_string}"
}
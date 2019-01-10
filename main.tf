resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 120
}

output "random" {
  value = "${random_id.random.hex}"
}

output "sensitive" {
  value = "${var.test_var}"
}

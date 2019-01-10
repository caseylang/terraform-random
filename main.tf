resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 120
}

output "random" {
  value = "cool-${random_id.random.hex}"
}

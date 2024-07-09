terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }
}

resource "null_resource" "example" {
  for_each = azurerm_public_ip.public_ip

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = var.admin_username
      private_key = file(var.private_key)
      host        = each.value.ip_address
    }
    inline = [
      "/usr/bin/hostname"
    ]
  }
}

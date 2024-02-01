resource "local_file" "myFile" {
  content  = var.contentHelloWorld
  filename = "hello-world.txt"
}

variable "contentHelloWorld" {
  #default = "Hello World from default value!"
  # You can also use ENV vars by doing:
  # export TF_VAR_contentHelloWorld="Hello World from ENV var!"
  # terraform apply -var "contentHelloWorld=asdaa"
  # terraform apply -var-file custom.tfvars
}

output "myFile-id" {
  value = resource.local_file.myFile.id
}

output "my-content" {
  value = var.contentHelloWorld
}

output "my-sorted-list" {
  value = sort(["z", "a", "c", "b"])
}

data "local_file" "myFileContent" {
  filename = "source-file.txt"
}

output "content-from-source-file" {
  value = data.local_file.myFileContent.content
}

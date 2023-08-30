data "template_file" "user_data" {
  template = file("./scripts/user_data.sh")
}
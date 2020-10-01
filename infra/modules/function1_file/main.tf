data "template_file" "edit_template" {
  template = file("../infra/interruption.py.tpl")
  vars = {
    auto_scaling_group_name = "${var.auto_scaling_group_name}"
  }
}

resource "local_file" "create_file" {
  content  = data.template_file.edit_template.rendered
  filename = "interruption.py"
}
data "template_file" "edit_template2" {
  template = "${file("../infra/od_running.py.tpl")}"
  vars = {
    tag_spot = "${var.tag_spot}" 
    tag_od = "${var.tag_od}"
    sfr_id = "${var.sfr_id}"
  }
}

resource "local_file" "create_file2" {
    content     = "${data.template_file.edit_template2.rendered}"
    filename = "od_running.py"
}
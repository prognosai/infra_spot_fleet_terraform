data "archive_file" "zip" {
  type        = "zip"
  source_file = var.src_file_func
  output_path = var.zip_func
  #depends_on = [template_file.edit_template]
}
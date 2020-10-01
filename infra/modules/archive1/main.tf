data "archive_file" "zip1" {
  type        = "zip"
  source_file = var.src_file_func1
  output_path = var.zip_func1
}
output "spot_fleet_request_id" {
    value = "${aws_spot_fleet_request.cheap_compute.id}"
}
output "ip" {
    value = "${join(",", aws_instance.machine.*.public_ip)}"
}

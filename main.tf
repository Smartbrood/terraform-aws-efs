resource "aws_efs_file_system" "this" {
  performance_mode = "${var.performance_mode}"
  tags             = "${var.tags}"
}

resource "aws_efs_mount_target" "private_subnet_a" {
  count          = "${var.private_subnet_a != "" ? 1 : 0}"
  file_system_id = "${aws_efs_file_system.this.id}"
  subnet_id      = "${var.private_subnet_a}"
}

resource "aws_efs_mount_target" "private_subnet_b" {
  count          = "${var.private_subnet_b != "" ? 1 : 0}"
  file_system_id = "${aws_efs_file_system.this.id}"
  subnet_id      = "${var.private_subnet_b}"
}

resource "aws_efs_mount_target" "private_subnet_c" {
  count          = "${var.private_subnet_c != "" ? 1 : 0}"
  file_system_id = "${aws_efs_file_system.this.id}"
  subnet_id      = "${var.private_subnet_c}"
}

data "null_data_source" "values" {
  inputs = {
    volume                        = "${aws_efs_file_system.this.id}"
    mount_target_private_subnet_a = "${join(",", aws_efs_mount_target.private_subnet_a.*.id)}"
    mount_target_private_subnet_b = "${join(",", aws_efs_mount_target.private_subnet_b.*.id)}"
    mount_target_private_subnet_c = "${join(",", aws_efs_mount_target.private_subnet_c.*.id)}"
  }
}

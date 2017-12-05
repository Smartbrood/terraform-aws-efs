terraform-aws-efs
=================

Terraform module to create EFS volume and mount targets.


Usage
-----

```hcl
module "efs" {
  source = "Smartbrood/efs/aws"
  private_subnet_a = "${var.private_subnet_a}"
  private_subnet_b = "${var.private_subnet_b}"
  private_subnet_c = "${var.private_subnet_c}"
  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
```



Authors
-------

Module managed by [Smartbrood LLC](https://github.com/Smartbrood).


License
-------

Apache 2 Licensed. See LICENSE for full details.

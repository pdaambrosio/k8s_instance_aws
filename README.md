# k8s_instance_aws

Provisioning EC2 instances with some required Kubernetes packages for a cluster

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Optional variables
	 availability_zone  = "us-east-1a"
	 profile  = "terraform"
	 region  = "us-east-1"
}
```
## Resources

| Name | Type |
|------|------|
| [aws_security_group.default_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) | data source |
| [aws_subnet.default_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_vpc.default_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The AWS availability zone to use | `string` | `"us-east-1a"` | no |
| <a name="input_profile"></a> [profile](#input\_profile) | AWS profile to use | `string` | `"terraform"` | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS region to use | `string` | `"us-east-1"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_key"></a> [private\_key](#output\_private\_key) | n/a |
| <a name="output_security_group_default_id"></a> [security\_group\_default\_id](#output\_security\_group\_default\_id) | n/a |
| <a name="output_subnet_default_id"></a> [subnet\_default\_id](#output\_subnet\_default\_id) | n/a |
| <a name="output_vpc_default_id"></a> [vpc\_default\_id](#output\_vpc\_default\_id) | n/a |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->
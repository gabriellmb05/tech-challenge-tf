variable "aws_region" {
  description = "A região usada para a rede vpc e o cluster eks."
  type = string
  nullable = false
}

variable "aws_vpc_name" {
  description = "."
  type = string
  nullable = false
}

variable "aws_vpc_cidr" {
  description = "."
  type = string
  nullable = false
}

variable "aws_vpc_azrs" {
  description = "."
  type = set(string)
  nullable = false
}

variable "aws_vpc_private_subnets" {
  description = "."
  type = set(string)
  nullable = false
}

variable "aws_vpc_public_subnets" {
  description = "."
  type = set(string)
  nullable = false
}

variable "aws_eks_name" {
  description = "."
  type = string
  nullable = false
}

variable "aws_eks_version" {
  description = "."
  type = string
  nullable = false
}

variable "aws_eks_eks_managed_node_groups_instance_types" {
  description = "."
  type = set(string)
  nullable = false
}

variable "aws_project_tags" {
  description = "."
  type = map(any)
  nullable = false
}
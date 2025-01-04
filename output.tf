output "vpc_id" {
  description = "ID of VPC"
  value = aws_vpc.network.id
  sensitive = true

}
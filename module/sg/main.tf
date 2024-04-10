resource "aws_security_group" "gaurav_sg" {
 name = "gaurav_sg"
 description = "Allow TLS inbound traffic and all outbound traffic"
 tags = {
 Name = "allow_tls"
 }
}
resource "aws_vpc_security_group_ingress_rule" "ib" {
 security_group_id = aws_security_group.gaurav_sg.id
 cidr_ipv4 = "${aws_eip.gauravip.public_ip}/32"
 from_port = 443
 ip_protocol = "tcp"
 to_port = 443
}
resource "aws_vpc_security_group_egress_rule" "ob" {
 security_group_id = aws_security_group.gaurav_sg.id
 cidr_ipv4 = "${aws_eip.gauravip.public_ip}/32"
 ip_protocol = "-1" # semantically equivalent to all ports
}

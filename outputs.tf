output "security_group" {
  value = aws_security_group.web-tier-sg.id
}

output "launch_configuration" {
  value = aws_launch_configuration.web-tier-lc.id
}

output "asg_name" {
  value = aws_autoscaling_group.web-tier-asg.id
}

output "elb_name" {
  value = aws_lb.web-tier-lb.dns_name
}

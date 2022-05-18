# create a launch template
# terraform aws launch template
resource "aws_launch_template" "webserver_launch_template" {
  name          = 
  image_id      = 
  instance_type = 
  key_name      = 
  description   = 

  monitoring {
    enabled = 
  }

  vpc_security_group_ids = 
}

# create auto scaling group
# terraform aws autoscaling group
resource "aws_autoscaling_group" "auto_scaling_group" {
  vpc_zone_identifier = 
  desired_capacity    = 
  max_size            = 
  min_size            = 
  name                = 
  health_check_type   = 

  launch_template {
    name    = 
    version = "$Latest"
  }

  tag {
    key                 = 
    value               = 
    propagate_at_launch = 
  }

  lifecycle {
    ignore_changes      = 
  }
}

# attach auto scaling group to alb target group
# terraform aws autoscaling attachment
resource "aws_autoscaling_attachment" "asg_alb_target_group_attachment" {
  autoscaling_group_name = 
  lb_target_group_arn    = 
}

# create an auto scaling group notification
# terraform aws autoscaling notification
resource "aws_autoscaling_notification" "webserver_asg_notifications" {
  group_names = 

  notifications = [
    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
  ]

  topic_arn = 
}
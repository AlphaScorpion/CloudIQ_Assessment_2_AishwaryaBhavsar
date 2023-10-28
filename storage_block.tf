// Create EBS Volume
resource "aws_ebs_volume" "ebsvolume" {
    availability_zone = "us-east-2a"
    size = 10
    encrypted = false
    type = "gp2"
    tags = {
        Name = "CloudIQ_EBS_Volume"
    }
}

// Create a running EC2 instance
resource "aws_instance" "ec2instance" {
    ami = "ami-0fa399d9c130ec923"
    instance_type = "t2.micro"
    key_name = "test"
    subnet_id = "subnet-0ca0465bbb260a89d"
    // Update termination rule - To prevent your instance from being accidentally terminated, you can enable termination protection for the instance.
    disable_api_termination = true
    tags = {
        Name = "CloudIQ_EC2"
    }
}

// Attach this newly created EBS volume to the newly created running ec2 instance
resource "aws_volume_attachment" "mount_ebs_to_ec2" {
    device_name = "/dev/sdd"
    instance_id = "i-04dbe8bae90bd2f9c"
    volume_id = aws_ebs_volume.ebsvolume.id
}
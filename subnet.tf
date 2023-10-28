// A subnet must be specifies for a default vpc
resource "aws_default_subnet" "default_az2" {
    availability_zone = "us-east-2a"
    tags = {
        Name = "Default subnet for us-east-2a"
    }
}
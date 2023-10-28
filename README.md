# CloudIQ_Assessment_2_AishwaryaBhavsar
2. Write terraform code to update an EC2 Storage block and update termination rule in AWS

<h1>Project Structure</h1><br>
<img src = "images/tree 2.png"><br>


<h1>Elastic Block Storage</h1><br>

**1. Create EBS Volume:** <br>
<img src = "images/EBS.png"><br>
**2. Create Running EC2 Instance:** <br>
<img src = "images/newly EC2 .png"><br>
**3. Attach EBS to EC2:** <br>
<img src = "images/attached ebs to ec2.png"><br>
**4. Apply termination protection:** <br>
<img src = "images/termination_protection.png"><br>

<h1>Terraform Workflow Steps</h1><br>

**Step 1: _terraform init_:** 
* Initializes terraform environment and plugins<br>
* A hidden folder called _.terraform_ will be generated, it contains all the plugins for your platform<br>
<img src = "images/terraform init 2.png">

**Step 2: _terraform validate_:**
* To reformat your code and run some basic validations.<br>
<img src = "images/terraform validate 2.png">

**Step 3: _terraform plan_:**
* The terraform plan command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure.<br>
<img src = "images/terraform plan 2.png">

**Step 4: _terraform apply_** 
* Deploy resources to your AWS console.
<img src = "images/terraform apply 2.png"><br>

**Step 5: _terraform destroy_**
* This will destroy all the resources/objects created in the AWS console and will help tear down the environment.



# Terraform-S3-Static-Hosting
This repository, "Terraform-S3-Static-Hosting," offers concise Terraform scripts for effortlessly deploying a static website on Amazon S3. The included S3 bucket policy enhances security. Follow the steps in the README for a quick setup and deployment.  Enjoy seamless hosting! 🌐
Prerequisites
Terraform
AWS account and credentials configured
Deployment Steps
Clone this repository: git clone https://github.com/Revanth-sabretooth-02/terraform-s3-static-website.git
Navigate to the project directory: cd terraform-s3-static-website
Initialize Terraform: terraform init
Customize terraform.tfvars with your AWS credentials and desired settings.
Deploy the infrastructure: terraform apply
Access your static website at the provided S3 bucket URL.
File Upload
Place your static files in the website directory, and Terraform will automatically upload them during deployment.

S3 Bucket Policy
The included Terraform script configures a secure S3 bucket policy for your website.

Feel free to customize the configuration to meet your specific requirements. For more details, refer to the Terraform documentation.

Happy coding! 🚀

# Terraform
# Issues Faced - 1
 error: File modules/.terraform/providers/registry.terraform.io/hashicorp/aws/5.94.1/windows_amd64/terraform-provider-aws_v5.94.1_x5.exe is 670.09 MB; this exceeds GitHub's file size limit of 100.00 MB
remote: error: GH001: Large files detected. You may want to try Git Large File Storage - https://git-lfs.github.com.
To https://github.com/sairamab/Terraform.git
 ! [remote rejected] main -> main (pre-receive hook declined)
error: failed to push some refs to 'https://github.com/sairamab/Terraform.git'

sol::
You need to remove the file which causing the issue both from your working directory and your Git history.
git rm --cached ec2-creation/.terraform/providers/registry.terraform.io/hashicorp/aws/5.94.1/windows_amd64/terraform-provider-aws_v5.94.1_x5.exe
git commit --amend -C HEAD
git push


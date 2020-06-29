# Terraform state

- Terraform keeps the remote state of the infrastructure
- It stores it in a file called terraform.tfstate
- There is also a backup of the prebious state in terraform.tfstate.backup
- When you execute terraform apply, a new terraform.tfstate and back is written
- This is how terraform keeps track of the remote state
  - If the remote state changes and you hit terraform apply again, terraform will make changes to meet the correct remote state again 
  - e.g. you terminate an instance that is managed by terraform, after terraform apply it will be started again

## More points
- You can keel the terraform.tfstate in version control 
- It gives you a history of your terraform.tfstate file (which is just a big JSON file)
- It allows you to collaborate with other team members 
- Local state works well in the beginning, but when you project becomes bigger, you might want to store your state remote

## Remote state
- The terraform state can be saved remote, using the backend functionality in terraform 
- The default is a local backend(local file mention above)
- Other backend includes:
  - S3 with a locking mechanism using dynomoDB
  - consul with locking 
- Benefits:
  - Ensure that you always have the latest version of the state
  - Collaboration in a team and with locking only once can work at a time without conflict 
  - More secure since stored in remote instead of local 
  - Some backends will enable remote operations 

Stores all the terraform state files in S3
```
terraform {
  backend "s3" {
    bucket = bucketName
    key = project 
  }
}
```
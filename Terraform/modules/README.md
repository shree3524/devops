**1.Make folder called terraform in that  folder make ec2 & vpc folder** 

**2.In terrafrom folder make files called provider.tf , test.tf(for module code) ,vars.tf(for all variables of ec2 and vpc) ,terraform.tfvars(for default values of variables)**

**3.In ec2 folder make two files main.tf(for ec2 code) , variable.tf**

**4.In vpc folder make two file main.tf(for vpc code) , variable.tf**

**5.After that run the following command on terminal**

````
terraform init
````
````
terrform plan
````
````
terraform apply
````

**the output**


![Example Image](https://github.com/shree3524/devops/blob/main/Terraform/modules/output_image.png)

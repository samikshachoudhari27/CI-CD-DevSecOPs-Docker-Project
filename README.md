# AWS-Terraform-Zomato-Project

# Flow of the Project :

![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/a19ffd36-e7b4-4e54-8dfb-b234e775d82b)




#Build Output:


![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/c0f87571-4797-4ec2-8d21-bd7aa6b9d6e6)



![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/db2924c2-8439-46d3-9cd8-183196bae294)


![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/97b97820-4e99-4b67-8967-918b09f9613b)


![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/35defc96-287d-4938-8c1e-ea8bbec2db49)





![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/f376d724-550a-40c5-8d22-27727e9e59b2)




![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/43865202-d678-4d3e-8c17-e4ab0733642f)




![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/b821ceeb-fae0-47a9-a35a-3403a978e4d0)





![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/90ea68c8-912c-4fcd-809d-a1902a7543ac)





![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/78ce2398-5956-481b-a296-eba8ab125bdb)





![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/44b9a8c9-1a04-4826-9450-bce807354680)



# Steps for Install Terraform:
               yum update -y
               yum install yum-utils -y
               yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
               yum install terraform -y
               terraform version

# Steps for Install AWS CLI: 
               yum update -y
               yum install python3-pip -y
               pip3 --version
               pip3 install awscli --upgrade --user
               python3 -m awscli --version


# For Configure AWS Accesses: 
# [root@jumpserver opt]#python3 -m awscli configure

AWS Access Key ID [None]:  

AWS Secret Access Key [None]:  

Default region name [None]:

Default output format [None]: 


# For Version Checking

               pip3 --version
               terraform version
               python3 -m awscli --version


# Practical steps :
# [root@localhost ~] # python3 -m awscli configure

AWS Access Key ID [None]:   AKIA6JASEF6UR333ESBBJUC

AWS Secret Access Key [None]:  oTF4M48+S561S2GPWWryMgPTFMyAxP

Default region name [None]:ap-south-1

Default output format [None]: json



# Credentials :
   # SonarQube 
               # ID:    sonar-token       
               # Name: sonar-token
   # Docker 
                  # ID: docker            
                  # Name: cloudgen/****** (docker)


# Plugins:
               1. Eclipse Temurin Installer 
               2. SonarQube Scanner
               3. NodeJS
               4. OWASP Dependency-Check
               5. Docker
               6. Docker Commons
               7. Docker Pipeline
               8. docker API
               9. Docker-Build-Step
     
      
# Tools in Jenkins:

# 1. jdk17:

               tool name: jdk17
            
               Source: Install from adoptium.net 
            
               version: java-17.0.8.1+1 
               




# 2. SonarQube:

               tool name: sonar-scanner
            
               version: SonaQube Scanner 5.0.1.3006





# 3. NodeJS:

                  tool name: node16
               
                  version:   JodeJS 16.2.0




# 4. OWASP:

               #Dependency-Check Installations:
            
               tool name: DP-Check
            
               Source: Install from github.com
            
               version: dependency-check 6.5.1



# 5. Docker:

               tool name: docker
            
               Source: Download from docker.com 
            
               version: latest 
            












# Steps for AWS IAM and Access Key Setup in AWS Account







![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/69a05006-2bd9-45bc-bfe2-00c2811cb90a)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/0baf637c-3981-4a21-9413-754a7166b16d)



![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/735ac881-0d8e-4f3e-9e02-a7b81977fe0f)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/90e12fd9-7cfa-4c15-a92f-7a4ae2e47553)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/fc24f894-aac5-486f-83d5-4e962f236f6e)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/5cdc4f1d-a2fa-41e8-a2bc-82456ce3c81b)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/dec70ebb-2ec5-4669-9365-b6b8376903f3)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/dff73b8e-0d98-4fcc-810d-b964d246f88d)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/eae3bc15-f294-4568-b59c-dd2ee0f3258c)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/ca3064d9-6404-4f0e-98bb-f380d47b99d6)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/7cad3836-90cd-48e0-b169-ceeb87770745)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/bd708542-635e-4539-997f-5ba398635401)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/08819ca7-7f16-4263-8f85-a1601e735614)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/c2f1cf1e-64f8-4497-9d38-11f840ecac2a)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/57afb5a8-7b18-46d9-a64a-de6de3c0f605)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/d332a683-879e-4b14-b604-0a189c25b00a)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/8357a5f2-46e3-4f31-bc65-e8bf90246594)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/54112b61-6adb-4800-bfc8-c2cc07c0e04f)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/fc74e019-b65c-47cc-884f-1726217e4ed9)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/e07338c2-3fe1-4cb2-a298-fa2ec17622d5)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/85b9c439-2557-497a-8f3b-a142b0df22eb)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/25b26772-c4f5-4c98-8fc3-615ae6378e85)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/e27a3014-c59c-43eb-a8ed-fb5b10485335)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/649bbc37-8c95-4ec4-94fa-7e6002030189)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/13e98a8a-48cc-42f9-9a79-0f6fb6a62da3)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/e566be7b-ca7b-47e3-9411-9934681ec2bd)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/41cbe33f-841f-4d90-b444-2cf5eabf0b45)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/9a844731-af7c-4f51-8b68-bbf9a1005c00)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/9cafb806-c404-4887-b970-0eeab9c605f7)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/91cdc82b-2fdb-4705-a116-cd6e0f4dad96)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/215e62eb-3238-47cc-93c5-d6877fe789e9)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/4a53223f-7462-4d32-ac2c-37f858bd2e0a)









![image](https://github.com/Cloud-Gen-DevOps-Projects/AWS-Terraform-Zomato-Project/assets/25892488/b9a88567-b28a-4942-bb7e-909dcf41ac50)











# Flask Application on ECS Fargate

### PREREQUISITE

The Dockerfile can be found on the repo here with the same name.
Then I have used the GitHub Action to build the image and then pushed it to ECR
<br /> <br />
![image](https://user-images.githubusercontent.com/56734473/140753293-7351b1b0-96f3-4da1-afcf-b381f86bce2a.png)
<br /> <br /> The whole code is available in the workflow folder in the repo

## Fargate Cluster
Created a Fargate Cluster <br /> <br />
![image](https://user-images.githubusercontent.com/56734473/140753005-0fbdb9d7-89f0-4cb9-85c7-d67950fbef44.png)
<br /> <br />
Created the service for the same  <br /> <br />
![image](https://user-images.githubusercontent.com/56734473/140753586-8ae00d7f-4e85-41fb-a8eb-59f4ae782150.png)
 <br /> <br />
 
 Created the Task Definiton <br /> <br />
 ![image](https://user-images.githubusercontent.com/56734473/140753699-152f630a-6516-4252-a664-5526c11dc0b9.png)
<br /> <br />

## Load Balancer 
Used the ALB as LoadBalancer<br /> <br />
![image](https://user-images.githubusercontent.com/56734473/140753845-e9740607-f5f9-4d69-9e85-c085e89b173d.png)
<br /> <br />

Created the Target Group for the ALB <br /> <br />
![image](https://user-images.githubusercontent.com/56734473/140753967-70f286d4-c081-4385-bbe4-2647d690ffa8.png)
<br /> <br />

## Deploy
Created the CodePipeline to deploy the image to the ECS 
![image](https://user-images.githubusercontent.com/56734473/140754098-bcca3821-de67-4f00-abaf-9a2b84d4b0dc.png)

## STEPS
When the Dev will push the code github action will automatically build and push the code to the **ECR** and then as the Image changes in the repository the 
**Codepipeline** will automatically deploy the Updated image over the **Fargate Cluster** by updating the **task definition version** And the **target group** 
will takeout the older version from **ALB** and after 3-4 min the code is fully deployed. <br />

![image](https://user-images.githubusercontent.com/56734473/140754634-9414c167-153f-46e2-b94a-1bef42a57cb4.png)
##### Which can be verified from this image, ALB url is used to access the Pods



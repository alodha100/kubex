
#Setting Up Kubernetes on Google Cloud - Container Engine

Steps:

###1. Prepare GCE-Client machine

#####. Launch your vagrant machine from google_cloud/client/Vagrantfile

It will setup the following in your client machine

1. Github

2. Google Cloud SDK

3. Kubectl

4. NodeJs

5. Angular 2

6. Docker Engine

7. Some Utilities like Nano

###2. Create project in google cloud - Using Google Cloud Console

Optionally you can create via gcloud cli

1. gcloud alpha projects create


###3. Configure Google Cloud SDK
       
1. gcloud auth login

2. gcloud init

3. Enable Apis

4. Setup Service Account: https://console.developers.google.com/projectselector/apis/credentials?pli=1

###4. Setup your Docker Image

1. docker pull nbabusundaram/dimusic-stanalone:v1

2. docker run  -d -p 8090:80 nbabusundaram/dimusic-stanalone:v1




###5. Setup Kubernetes Cluster using Kubectl 

1. gcloud container clusters describe kubedemo-cluster

2.  gcloud container clusters describe kubedemo-cluster | grep username

3. gcloud container clusters describe kubedemo-cluster | grep password

4. gcloud container clusters describe kubedemo-cluster | grep endpoint

###6. Run your E-Commerce Application using Kubectl

1. docker tag nbabusundaram/dimusic-stanalone:v1 gcr.io/$PROJECT_ID/dimusic-standalone-web:v1

2. kubectl run dimusicweb --port 80 --image=gcr.io/$PROJECT_ID/dimusic-standalone-web:v1 --replicas=6 --labels=app=dimusicweb,version=1.0

3. kubectl expose deployment dimusicweb --type="LoadBalancer"


###7. Run your E-Commerce Application using Kubectl

1. kubectl set image deployment/dimusicweb dimusicweb=gcr.io/$PROJECT_ID/dimusic-standalone-web:v2

###8. Scale/Autoscale your applications

1. kubectl scale --current-replicas=2 --replicas=3 deployment/dimusicweb

2. kubectl autoscale deployment dimusicweb --min=2 --max=10 --cpu-percent=60

###9. Teardown cluster

1. kubectl delete service,deployment dimusicweb


2. gcloud container clusters delete kubedemo-cluster

3. gsutil ls

4. gsutil rm -r gs://artifacts.$PROJECT_ID.appspot.com

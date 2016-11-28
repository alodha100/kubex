1. Prepare GCE-Client machine

1. Create project in google cloud

2. export PROJECT_ID="your-project-id"

Install gcloud components


sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM

3.


sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM


4. gcloud components install kubectl

5. Install kubectl

wget https://storage.googleapis.com/kubernetes-release/release/v1.4.4/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/local/bin/kubectl

6.gcloud auth login


7. gcloud init


8. Enable Apis

9. docker pull nbabusundaram/dimusic-stanalone:v1

10. docker run  -d -p 8090:80 nbabusundaram/dimusic-stanalone:v1

11. docker tag nbabusundaram/dimusic-stanalone:v1 gcr.io/$PROJECT_ID/dimusic-standalone-web:v1

12. Creating Default Service Account:

   https://console.developers.google.com/projectselector/apis/credentials?pli=1

13. kubectl run dimusicweb --port 80 --image=gcr.io/$PROJECT_ID/dimusic-standalone-web:v1 --replicas=6 --labels=app=dimusicweb,version=1.0

14. kubectl expose deployment dimusicweb --type="LoadBalancer"

15. gcloud container clusters describe kubedemo-cluster

16.  gcloud container clusters describe kubedemo-cluster | grep username

17. gcloud container clusters describe kubedemo-cluster | grep password

18. gcloud container clusters describe kubedemo-cluster | grep endpoint

19. Rolling update

kubectl set image deployment/dimusicweb dimusicweb=gcr.io/$PROJECT_ID/dimusic-standalone-web:v2


20. kubecti describe pod


21. kubectl delete service,deployment dimusicweb


22. gcloud container clusters delete kubedemo-cluster

21. gsutil ls

 gs://artifacts.<$PROJECT_ID>.appspot.com/
 gsutil rm -r gs://artifacts.$PROJECT_ID.appspot.com


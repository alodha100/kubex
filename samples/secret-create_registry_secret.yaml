$ docker login
Username: janedoe
Password: ●●●●●●●●●●●
Email: jdoe@example.com
WARNING: login credentials saved in /Users/jdoe/.docker/config.json.
Login Succeeded

$ echo $(cat ~/.docker/config.json)
{ "https://index.docker.io/v1/": { "auth": "ZmFrZXBhc3N3b3JkMTIK", "email": "jdoe@example.com" } }

$ cat ~/.docker/config.json | base64
eyAiaHR0cHM6Ly9pbmRleC5kb2NrZXIuaW8vdjEvIjogeyAiYXV0aCI6ICJabUZyWlhCaGMzTjNiM0prTVRJSyIsICJlbWFpbCI6ICJqZG9lQGV4YW1wbGUuY29tIiB9IH0K

$ cat > /tmp/image-pull-secret.yaml <<EOF
apiVersion: v1
kind: Secret
metadata:
  name: myregistrykey
data:
  .dockerconfigjson: eyAiaHR0cHM6Ly9pbmRleC5kb2NrZXIuaW8vdjEvIjogeyAiYXV0aCI6ICJabUZyWlhCaGMzTjNiM0prTVRJSyIsICJlbWFpbCI6ICJqZG9lQGV4YW1wbGUuY29tIiB9IH0K
type: kubernetes.io/dockerconfigjson
EOF

$ kubectl create -f /tmp/image-pull-secret.yaml
secret "myregistrykey" created


Now, you can create pods which reference that secret by adding an imagePullSecrets section to a pod definition.
apiVersion: v1
kind: Pod
metadata:
  name: foo
spec:
  containers:
    - name: foo
      image: janedoe/awesomeapp:v1
  imagePullSecrets:
    - name: myregistrykey

apiVersion: v1
kind: Pod
metadata: 
 name: pod-1

spec:
  containers:
    - name: cont1
      image: nginx
      volumeMounts:
      - name: ebs
        mountPath: /tmp/data

  volumes: 
  - name: ebs
    emptyDir:
      sizeLimit: 500Mi

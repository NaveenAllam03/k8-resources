

1. kubectl run pod <pod-name> --image=<specify_image:image_tag> --port=<specify port> --restart=Never --labels="app=<app_name>,env=<enviroment> --overrides='{ "spec": { "containers": [ { "name": "my-container", "image": "nginx:latest", "ports": [ { "containerPort": 80 } ] } ] } }'
   * Explination: 
    * kubectl run: The command to create and run a pod.
       my-pod: The name of the pod.
     --image=nginx:latest: The Docker image to use for the container.
     --port=80: The port that the container will expose.
     --restart=Never: Indicates that this is a pod, not a deployment.
     --labels="app=myapp,env=prod": Adds labels to the pod, in this case app=myapp and env=prod.
     --overrides: Specifies the container name within the pod definition. *
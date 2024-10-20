# Process to do a smoke-testing for newly created cluster
1. Check Cluster-Info 
   #Command : Kubectl cluster-info 
2. Check Masters and nodes
   #Command : kubectl get nodes 
3. Check Namespaces
   #Command : kubectl get namespaces (or) ns
4. Check Management-Pods in Kube-System namespace
   #Command : kubectl get pods -n kube-system -o wide | grep -i api
   #Command : kubectl get pods -n kube-system -o wide | grep -i etcd
   #Command : kubectl get pods -n kube-system -o wide | grep -i scheduler
   # OR
   #Command : kubectl get pods -n kube-system -o wide | grep -E 'etcd|api|sch'  
5. Deploy Test POD and check status.
6. Expose POD on node port.
7. Deploy Sample_deployment.
8. Expose node-port with deployment
9. check services which are exposing POD and Deployment to Internet.
10. Delete a pod and check if it is recreating.
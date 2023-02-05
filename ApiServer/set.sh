# scale up

# kuberesolver sa https://blog.nobugware.com/post/2019/kubernetes_mesh_network_load_balancing_grpc_services/
kubectl create role pod-reader-role --verb=get --verb=watch --resource=endpoints,services
kubectl create sa pod-reader-sa
kubectl create rolebinding pod-reader-rb --role=pod-reader-role --serviceaccount=default:pod-reader-sa 

CREATE SECRET so we can mount it during runtime: these 3 files you will receive from VMware GPU FARM
 
$ kubectl create secret generic bitfusion-client-secret-ca.crt --from-file=tokens/ca.crt -n bfc-namespace
$ kubectl create secret generic bitfusion-client-secret-client.yml --from-file=tokens/client.yaml -n bfc-namespace
$ kubectl create secret generic bitfusion-client-secret-servers.conf --from-file=tokens/servers.conf -n bfc-namespace

ONCE SECRET ARE CREATED JUST RUN YOU POD
kubectl create -f bfc-pod.yaml
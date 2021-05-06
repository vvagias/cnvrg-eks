eksctl create cluster -f cluster.yaml
eksctl create nodegroup --config-file=nodes.yaml
helm repo add cnvrg https://charts.cnvrg.io
helm repo update
helm install cnvrg cnvrg/cnvrg -n cnvrg --create-namespace --timeout 1500s --wait --set clusterDomain=vv.cnvrg.io

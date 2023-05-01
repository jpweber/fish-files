# switch to azure dev kubeconfig 

function kteldev 
 export KUBECONFIG=/Users/jamesweber/.kube/teleport-dev-kubeconfig.yaml
 tsh login --proxy=tele.astronomer-dev.cloud:443
end


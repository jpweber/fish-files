# switch to azure dev kubeconfig 

function ktelstage
 tsh login --proxy=tele.astronomer-stage.cloud:443
 export KUBECONFIG=/Users/jamesweber/.kube/teleport-stage-kubeconfig.yaml
end


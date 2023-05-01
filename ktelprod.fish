# switch to azure dev kubeconfig 

function ktelprod
 export KUBECONFIG=/Users/jamesweber/.kube/teleport-prod-kubeconfig.yaml
 echo -e "\033]50;SetProfile=Prod\a"
 tsh login --proxy=tele.astronomer.cloud:443
end


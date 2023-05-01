# switch to azure dev kubeconfig 

function ktelperf 
 tsh login --proxy=tele.astronomer-perf.cloud:443
 export KUBECONFIG=/Users/jamesweber/.kube/teleport-perf-kubeconfig.yaml
end


# set kube config to azure prod 

function aprod 
	export KUBECONFIG=/Users/jamesweber/.kube/azure-prod.config
	echo -e "\033]50;SetProfile=Prod\a"
end

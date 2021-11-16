# copy pwd to pasteboard and strip new line 

function kprod 
	export KUBECONFIG=/Users/jamesweber/.kube/prod.config
	echo -e "\033]50;SetProfile=Prod\a"
end

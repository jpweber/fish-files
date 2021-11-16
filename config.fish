
# Load fishmarks (http://github.com/techwizrd/fishmarks)
. $HOME/.fishmarks/marks.fish

fish_vi_key_bindings
alias oc "code ."



set -x GOPATH1 $HOME/Development/go
set -gx GOPATH $GOPATH1
set -gx PATH $PATH $GOPATH1/bin
#set -x KUBECONFIG (find ~/.kube -type f -name '*.config*' | tr '\n' ':' | sed 's/:$//')
set -gx PATH $PATH $HOME/.krew/bin
set -gx MFA_DEVICE arn:aws:iam::854527341753:mfa/jim
set -gx MFA_STS_DURATION 129600 
set -gx KUBECTL_EXTERNAL_DIFF kubectl-neat-diff

source ~/.iterm2_shell_integration.fish

#function fish_prompt
#    /usr/local/bin/powerline-go -error $status -shell bare
#end


function iterm2_print_user_vars
  if  [ (echo $KUBECONFIG | grep config) ]
	set -l kube_config (kubectl ctx -c  | sed -e "s/^gke_astronomer-//" -e "s/_us-.*//")
  	#set -l kube_config (basename $KUBECONFIG)
  	iterm2_set_user_var kubeConfig "$kube_config"
  end
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/bin/google-cloud-sdk/path.fish.inc' ]; . '/usr/local/bin/google-cloud-sdk/path.fish.inc'; end
set -g fish_user_paths "/usr/local/opt/terraform@0.13/bin" $fish_user_paths


# Load fishmarks (http://github.com/techwizrd/fishmarks)
. $HOME/.fishmarks/marks.fish

fish_vi_key_bindings
alias oc "code ."

set -x GOPATH1 $HOME/Development/go
set -gx GOPATH $GOPATH1
set -gx PATH $PATH $GOPATH1/bin
#set -x KUBECONFIG (find ~/.kube -type f -name '*.config*' | tr '\n' ':' | sed 's/:$//')

source ~/.iterm2_shell_integration.fish

#function fish_prompt
#    /usr/local/bin/powerline-go -error $status -shell bare
#end

function iterm2_print_user_vars
  if  [ (echo $KUBECONFIG | grep config) ]
  	set -l kube_config (basename $KUBECONFIG)
  	iterm2_set_user_var kubeConfig "$kube_config"
  end
end

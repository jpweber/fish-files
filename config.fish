
# Load fishmarks (http://github.com/techwizrd/fishmarks)
. $HOME/.fishmarks/marks.fish

fish_vi_key_bindings
alias rmi "rm -i"
alias ark "docker run --rm -u (id -u) -v ~/.kube/config:/kubeconfig -e KUBECONFIG=/kubeconfig gcr.io/heptio-images/ark:latest"
alias oc "code ."
# kubernets aliases
#alias kget "kubectl get"
#alias klogs "kubectl logs"

set -x GOPATH1 $HOME/Development/go
set -x GOPATH2 $HOME/Development/heptio/go
set -gx GOPATH $GOPATH1:$GOPATH2
set -gx PATH $PATH $GOPATH1/bin
set -gx PATH $PATH $GOPATH2/bin
set -x SHELL /bin/bash
set -x KUBECONFIG (find ~/.kube -type f -name '*kubeconfig*' | tr '\n' ':' | sed 's/:$//')

source ~/.iterm2_shell_integration.fish
# fish: Place this in ~/.config/fish/config.fish after the line
# "source ~/.iterm2_shell_integration.fish".
function iterm2_print_user_vars
  if  [ (echo $KUBECONFIG | grep config) ]
  	set -l kube_config (basename $KUBECONFIG)
  	iterm2_set_user_var kubeConfig "$kube_config"
  end
end

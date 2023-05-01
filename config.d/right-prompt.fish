function fish_right_prompt
  set -l k8s_color (set_color purple)
  set -l k8s_context (kubectl ns -c)

  echo -e -n -s $k8s_color "[$k8s_context]"
end

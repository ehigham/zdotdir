#
# prompt
#

# remove right prompt for prior commands
setopt transient_rprompt

# initialize prompt
autoload -Uz promptinit && promptinit

# load user configuration - see functions/prompt_p10k_setup
prompt p10k ehigham

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

[[ -f ~/.bash_aliases ]] && echo "sourcing .bash_aliases..." && source ~/.bash_aliases

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# added by Anaconda2 2.4.0 installer
export PATH="/Users/grudkowm/anaconda2/bin:$PATH"

function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
 }
 function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
 }
setjdk 1.7

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/grudkowm/.sdkman"
[[ -s "/Users/grudkowm/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/grudkowm/.sdkman/bin/sdkman-init.sh"

export JAVA_HOME=/Library/Java/Home
export CS_HOME=~/cloud-search-tools
export PATH=~/cloud-search-tools/bin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export AWS_CREDENTIAL_FILE=~/.ec2/credentials
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.6
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

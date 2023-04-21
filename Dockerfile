FROM jupyter/scipy-notebook

LABEL  AUTHOR='Christophe HOAREAU (christophe.hoareau@lecnam.net)'

# must reset to user root to install more stuff
USER root

# update linuw stuffs
RUN apt-get update

# set the user back to original setting
#USER $NB_UID

#run jupyter
EXPOSE 8888

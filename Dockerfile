FROM jupyter/scipy-notebook

LABEL  AUTHOR='Christophe HOAREAU (christophe.hoareau@lecnam.net)'

# must reset to user root to install more stuff
USER root

# update linuw stuffs
RUN apt-get update

# Supress the work directory
# RUN mkdir /home/jovyan/shared

# Add file from git hub
ADD https://github.com/hoareauc/first_binder/blob/903311efe9ef760b32518de590bd63040a61270b/mainAlphaGen.ipynb /home/jovyan/work

# set the user back to original setting
USER $NB_UID

# run jupyter
EXPOSE 8888

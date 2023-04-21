FROM jupyter/scipy-notebook

LABEL  AUTHOR='Christophe HOAREAU (christophe.hoareau@lecnam.net)'

# must reset to user root to install more stuff
USER root

# update linux stuffs
#RUN apt-get update

# update linux stuffs
RUN apt-get -y autoremove

RUN mkdir .ipynb_checkpoints

RUN wget https://github.com/hoareauc/first_binder/blob/master/mainAlphaGen.ipynb
RUN cp mainAlphaGen.ipynb /home/jovyan/work

RUN mkdir -p /home/jovyan/work && \
 chown jovyan:users -R /home/jovyan/work/

# set the user back to original setting
USER $NB_UID


# run jupyter
EXPOSE 8888

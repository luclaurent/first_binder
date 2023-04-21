FROM jupyter/scipy-notebook

LABEL  AUTHOR='Christophe HOAREAU (christophe.hoareau@lecnam.net)'

# must reset to user root to install more stuff
USER root

# update linux stuffs
#RUN apt-get update

# update linux stuffs
RUN apt-get -y autoremove

# Add file from git hub
ADD https://github.com/hoareauc/first_binder/blob/b463d69c1396480e8e247ae30a5572e3e0836ed7/mainAlphaGen.ipynb /home/jovyan/work


ADD https://github.com/hoareauc/first_binder/master/fig_spring_mass_damper_displacement.svg /home/jovyan/work

ADD https://github.com/hoareauc/first_binder/master/fig_spring_mass_damper_displacement_velocity.svg /home/jovyan/work

RUN mkdir .ipynb_checkpoints

ADD https://github.com/hoareauc/first_binder/master/.ipynb_checkpoints/mainAlphaGen-checkpoint.ipynb /home/jovyan/work/.ipynb_checkpoints


RUN mkdir -p /home/jovyan/work && \
 chown jovyan:users -R /home/jovyan/work/

# set the user back to original setting
USER $NB_UID


# run jupyter
EXPOSE 8888

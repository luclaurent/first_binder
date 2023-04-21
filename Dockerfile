FROM jupyter/scipy-notebook

LABEL  AUTHOR='Christophe HOAREAU (christophe.hoareau@lecnam.net)'

# must reset to user root to install more stuff
USER root

# update linux stuffs
#RUN apt-get update

# update linux stuffs
RUN apt-get -y autoremove

RUN mkdir .ipynb_checkpoints

RUN cd /home/jovyan/work

RUN wget https://raw.githubusercontent.com/hoareauc/first_binder/master/mainAlphaGen.ipynb

RUN wget https://raw.githubusercontent.com/hoareauc/first_binder/master/fig_spring_mass_damper_displacement.svg

RUN https://raw.githubusercontent.com/hoareauc/first_binder/master/fig_spring_mass_damper_displacement_velocity.svg

RUN cd /home/jovyan/

RUN mkdir -p /home/jovyan/work && \
 chown jovyan:users -R /home/jovyan/work/

# set the user back to original setting
USER $NB_UID


# run jupyter
EXPOSE 8888

FROM jupyter/scipy-notebook

LABEL  AUTHOR='Christophe HOAREAU (christophe.hoareau@lecnam.net)'

# must reset to user root to install more stuff
USER root

# update linux stuffs
#RUN apt-get update

# update linux stuffs
RUN apt-get -y autoremove

RUN mkdir .ipynb_checkpoints


RUN wget https://raw.githubusercontent.com/hoareauc/first_binder/master/mainAlphaGen2.ipynb

RUN wget https://raw.githubusercontent.com/hoareauc/first_binder/master/fig_spring_mass_damper_displacement.svg

RUN wget https://raw.githubusercontent.com/hoareauc/first_binder/master/fig_spring_mass_damper_displacement_velocity.svg

RUN cp mainAlphaGen2.ipynb /home/jovyan/work/
RUN cp fig_spring_mass_damper_displacement.svg /home/jovyan/work/
RUN cp fig_spring_mass_damper_displacement_velocity.svg /home/jovyan/work/

RUN rm mainAlphaGen2.ipynb
RUN rm fig_spring_mass_damper_displacement.svg
RUN rm fig_spring_mass_damper_displacement_velocity.svg

RUN mkdir -p /home/jovyan/work && \
 chown jovyan:users -R /home/jovyan/work/

# set the user back to original setting
USER $NB_UID


# run jupyter
EXPOSE 8888

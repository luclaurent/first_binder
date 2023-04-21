# Git repo
1. create a git repo

# Create a package for github
1. create an docker image
	docker build -t alpha_gen .
	docker tag alpha_gen ghcr.io/hoareauc/first_binder:latest   
2. create a PAT on Github (see https://www.youtube.com/watch?v=gqseP_wTZsk&t=372s)
3. authenticate with GHCR
	docker login ghcr.io -u hoareauc -p echo "tocken"
4. tag and push the image to GHCR


docker run --name myAlphaGen -w /home/jovyan --user root -e GRANT_SUDO=yes -p 8888:8888 -d -v %cd%:/home/jovyan/work alpha_gen


[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/hoareauc/first_binder.git/HEAD)


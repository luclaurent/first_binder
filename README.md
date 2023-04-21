# first_binder
1. create a git repo

# create a packe
1. create an docker image
	docker build -t alpha_gen .
	docker tag alpha_gen ghcr.io/hoareauc/first_binder:latest   
2. create a PAT on Github (see https://www.youtube.com/watch?v=gqseP_wTZsk&t=372s)
3. authenticate with GHCR
	docker login ghcr.io -u hoareauc -p echo "tocken"

4. tag and push the image to GHCR


docker build -t alpha_gen .
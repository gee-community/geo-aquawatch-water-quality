# geo-aquawatch-water-quality
Code produced for the GEE-GEO Aquawatch project.
Nice!


# Docker version (solid)

Copy your service account key into assets/service-account.json (needed for Google cloud storage uploads). 
Define your bucket and Earth Engine assets id in Dockerfile as evironmental variables. 

Build: 
docker build . -t solid

Run: 
docker run  -p 8888:8888  -v ${PWD}/:/home/jovyan/work solid 

(mounts working dir on docker image)



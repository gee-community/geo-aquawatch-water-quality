FROM jupyter/minimal-notebook


USER root

# install gdal 
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:ubuntugis/ppa
RUN apt-get install -y gdal-bin
RUN apt-get install -y libgdal-dev
RUN export CPLUS_INCLUDE_PATH=/usr/include/gdal
RUN export C_INCLUDE_PATH=/usr/include/gdal

RUN apt-get install -y curl

USER ${NB_UID}

# install google cloud sdk 
ARG CLOUD_SDK_VERSION=367.0.0
ENV CLOUD_SDK_VERSION=$CLOUD_SDK_VERSION
RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
    tar xzf google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
    rm google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz
RUN ./google-cloud-sdk/install.sh --bash-completion=true --path-update=true --usage-reporting=false --additional-components app-engine-python app-engine-python-extras 


# install gdal python 
RUN mamba install GDAL

# install earthengine api and folium
RUN mamba install earthengine-api
RUN mamba install folium


# install solid
RUN python -m pip install git+https://github.com/BrandonSmithJ/MDN

ENV PATH $HOME/google-cloud-sdk/bin:$PATH
ENV MPLCONFIGDIR ./
ENV GOOGLE_APPLICATION_CREDENTIALS=$HOME/work/assets/service-account.json
ENV BUCKET=solid_cboros
ENV EE_ASSET_ID=users/cboros/solid

# copy artifacts to image
#COPY --chown=${NB_UID}:users Solid_docker.ipynb work/Solid.ipynb
#COPY --chown=${NB_UID}:users assets/S2A_MSI_2018_12_27_16_02_16_T18SUJ_L2W.nc work/.
#COPY --chown=${NB_UID}:users assets/service-account.json work/.


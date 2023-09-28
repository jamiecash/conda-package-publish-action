FROM continuumio/miniconda3:4.7.10

LABEL "repository"="https://github.com/jamiecash/conda-package-publish-action"
LABEL "maintainer"="Jamie Cash <jlcash@gmail.com>"

RUN conda install -y anaconda-client conda-build hatchling

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

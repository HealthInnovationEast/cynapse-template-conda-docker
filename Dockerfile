FROM continuumio/miniconda3:4.11.0

LABEL description="Dockerfile containing all the requirements for building images based on conda packages in environment.yaml" \
      author="cynapse@eahsn.org"

ARG ENV_NAME="base"

COPY environment.yml /
RUN conda env update -n ${ENV_NAME} -f environment.yml && conda clean -a

# Add conda installation dir to PATH (instead of doing 'conda activate')
ENV PATH /opt/conda/envs/${ENV_NAME}/bin:$PATH

# Dump the details of the installed packages to a file for posterity
RUN conda env export --name ${ENV_NAME} > ${ENV_NAME}_exported.yml

# Initialise bash for conda
RUN conda init bash

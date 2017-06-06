FROM lucidfrontier45/miniconda:stretch
LABEL maintainer="Shiqiao Du <lucidfrontier.45@gmail.com>"

RUN set -ex \
    && conda_pkgs=' \
        nomkl \
        scikit-learn \
        pandas \
    ' \
    && conda install -y $conda_pkgs \
    && conda clean -i -l -t -y

COPY lightgbm-2.0-py3-none-linux_x86_64.whl /tmp
RUN pip install /tmp/lightgbm-2.0-py3-none-linux_x86_64.whl

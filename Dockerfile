FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y \
        python-pip \
        python-dev \
        texlive \
        texlive-latex-recommended \
        texlive-latex-extra \
        texlive-fonts-recommended \
        texlive-base \
    && apt-get remove -y \
        texlive-fonts-recommended-doc \
        texlive-latex-base-doc \
        texlive-latex-extra-doc \
        texlive-latex-recommended-doc \
        texlive-pictures-doc \
        texlive-pstricks-doc \
    && apt-get clean

RUN pip install \
    sphinx \
    sphinx_rtd_theme \
    sphinx_bootstrap_theme \
    alabaster

ENTRYPOINT ["/bin/bash"]

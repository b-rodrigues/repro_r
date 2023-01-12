FROM rocker/r-ver:4.2.1

RUN mkdir /home/project

RUN mkdir /home/project/output

COPY renv.lock /home/project/renv.lock

COPY script.R /home/project/script.R

RUN R -e "install.packages('renv')"

RUN R -e "setwd('/home/project/');renv::restore(confirm = FALSE)"

CMD R -e "source('/home/project/script.R')"
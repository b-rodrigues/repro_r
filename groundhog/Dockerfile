FROM rocker/r-ver:3.4.4

RUN echo "options(repos = c(CRAN='https://packagemanager.rstudio.com/cran/latest'), download.file.method = 'libcurl')" >> /usr/local/lib/R/etc/Rprofile.site

RUN mkdir /home/project

RUN mkdir /home/groundhog_folder

RUN mkdir /home/project/output

COPY script.R /home/project/script.R

COPY install_deps.R /home/project/install_deps.R

RUN R -e "install.packages('groundhog');source('/home/project/install_deps.R')"

CMD R -e "source('/home/project/script.R')"
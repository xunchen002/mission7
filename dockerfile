FROM jupyter/base-notebook
MAINTAINER xun
CMD start-notebook.sh --NotebookApp.token=''

RUN python3 -m pip install PyMySQL
RUN python3 -m pip install flask==0.12

EXPOSE 8888

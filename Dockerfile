FROM jupyter/datascience-notebook

COPY . ./app

RUN pip install -r requirements.txt
EXPOSE 8888

CMD ["jupyter", "notebook", "--NotebookApp.token=''"]
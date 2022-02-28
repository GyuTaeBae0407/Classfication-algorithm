FROM jupyter/datascience-notebook

COPY . ./app
WORKDIR /app

RUN pip install -r requirements.txt
EXPOSE 8888

CMD ["jupyter", "notebook", "--NotebookApp.token=''"]
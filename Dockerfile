FROM python:bullseye@sha256:2198eb69dc1b94c5a3c37438741a8ecebf7a8fbcab72e99c6b2b29731e5ba32f
LABEL description = 'docker image for data science development environment'

RUN pip install jupyter numpy pandas matplotlib seaborn tensorflow pytorch

EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "allow-root"]

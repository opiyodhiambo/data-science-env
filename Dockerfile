#The base imnage
FROM python:bullseye

#The image labels
LABEL description = 'docker image for data science development environment'

#Installing the necessary deoendencies
RUN pip install jupyter numpy matplotlib seaborn

#Setting up the working directory
WORKDIR /datascience-env

#Copying from my local environment to the container
COPY . /datascience-env

#The jupyter notebook port
EXPOSE 8888

#The command to run when the container starts
CMD ["jupyter-notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "allow-root"]

# Use an official Python runtime as a parent image
FROM python:3.10-slim

RUN apt-get update -y && apt-get install gcc -y

# Set the working directory in the container
WORKDIR /usr/src/app

# Install Jupyter
RUN pip install notebook

COPY . . 

RUN pip install -r requirements.txt

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]

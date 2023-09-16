# Using Cloud Run

Steps to make this work:

1. Create a dockerfile
2. Build application image
3. Store the image on a registry



## **Essential** Dockerfile
- Creation of Dockerfile
This file consists in a succession of commands used to create the Docker image. <br>

Every streamlit project has a different structure, this example is not a one size fit all.


with file 
```# RUNTIME/OS

FROM python:3.10

#Expose port you want your app on
EXPOSE 8080

#Upgrade pip and install requirements
COPY requirements.txt requirements.txt
RUN pip install -U pip
RUN pip install -r requirements.txt

#Copy streamlit code and set working directory
COPY streamlit streamlit
WORKDIR /streamlit


#Run: the line that you would normally execute in terminal
ENTRYPOINT ["/bin/bash"]
CMD ["entrypoint.sh"]

```


entrypoint.sh
```
#! /bin/sh
#convert port number env variable
echo "Running Streamlit app"
streamlit run /streamlit/dashboard_main.py -server.port=8080 -server.address=0.0.0.0
```


```
Ran into this error: <br>
2023-09-16 21:09:25 /bin/bash: entrypoint.sh: No such file or directory

```
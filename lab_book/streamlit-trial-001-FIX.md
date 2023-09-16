# Using Cloud Run

Steps to make this work:

1. Create a dockerfile
2. Build application image
3. Store the image on a registry



## **Essential** Dockerfile
- Creation of Dockerfile
This file consists in a succession of commands used to create the Docker image. <br>

Every streamlit project has a different structure, this example is not a one size fit all.

```
Ran into this error: <br>
2023-09-15 18:02:03 Usage: streamlit run [OPTIONS] TARGET [ARGS]...
2023-09-15 18:02:03 Try 'streamlit run --help' for help.
2023-09-15 18:02:03 
2023-09-15 18:02:03 Error: No such option: -s

```
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
ENTRYPOINT [ "streamlit", "run", "dashboard_main.py", "-server.port=8080", "-server.address=0.0.0.0" ]
```


FIX: should be **--s**erver.port=8080 and --server.address=0.0.0.0 instead of **-s**erver.port

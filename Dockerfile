# RUNTIME/OS

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
ENTRYPOINT [ "streamlit", "run", "dashboard_main.py", "--server.port=8080", "--server.address=0.0.0.0" ]
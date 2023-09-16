#! /bin/sh
#convert port number env variable
echo "Running Streamlit app"
streamlit run /streamlit/dashboard_main.py -server.port=8080 -server.address=0.0.0.0
FROM ultrafunk/undetected-chromedriver

# RUN apt-get update -y && apt-get install -y xvfb
# Set working directory in container
WORKDIR /data

# Copy local files to container
COPY ./test.py .
# COPY ./start.sh .
# COPY ./ip_rand.py .
RUN pip3 install flask

# Run your script with ipython when the container is started
CMD ["python3","test.py"]

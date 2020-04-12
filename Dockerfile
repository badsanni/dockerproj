FROM python:3.7.3-stretch

# Working  Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore-DL3013
RUN pip install --upgrade pip==20.0.2 &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
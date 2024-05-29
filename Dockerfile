from python:3.8-slim

run pip3 install bottle -i https://mirrors.aliyun.com/pypi/simple/

copy ./bottle.py /usr/lib/python3/dist-packages/bottle.py
copy ./v5-unity /root/v5-unity

workdir /root/v5-unity
expose 8003

cmd python3 bottle_server.py
# Use a specific version of the Python base image to ensure consistency
# FROM python:3.8-slim

# # Set environment variables to prevent Python from writing .pyc files and to buffer stdout/stderr
# ENV PYTHONDONTWRITEBYTECODE=1
# ENV PYTHONUNBUFFERED=1

# # Install dependencies
# # Using a trusted source for pip installs and combining the run commands to reduce layers
# RUN pip install --no-cache-dir --upgrade pip \
#     && pip install --no-cache-dir bottle==0.12.19 -i https://mirrors.aliyun.com/pypi/simple/

# # Create and set working directory
# WORKDIR /root/v5-unity

# # Copy application files into the container
# COPY ./bottle.py /usr/local/lib/python3.8/dist-packages/bottle.py
# COPY ./v5-unity /root/v5-unity

# # Expose the port the app runs on
# EXPOSE 8003

# # Create a non-root user and switch to that user
# RUN useradd -m appuser
# USER appuser

# # Set the PYTHONPATH environment variable to include the working directory
# ENV PYTHONPATH=/root/v5-unity

# # Run the application
# CMD ["python3", "bottle_server.py"]
# Base image of Ubuntu 20.04 -- JammyJellyfish
FROM ubuntu:latest
RUN echo "Ubuntu Latest image --> Success"

WORKDIR /web-app
RUN echo "Container Directory Created"

# Update and install NGINX and git
RUN apt update && apt install -y nginx git
RUN echo "System Updated : Nginx && git Installation Success"

# Clone the repository
RUN git clone https://github.com/theshubhamgour/TIS_GROUP.git
RUN echo "TIS Cloning Success"

# Copy the files from the repository to NGINX html directory
RUN cp -r TIS_GROUP/* /var/www/html/
RUN echo "--------------------------"
RUN ls -ll /var/www/html
RUN echo "-------------------------"
RUN echo "File Listing Success"

# Expose port 80
EXPOSE 80
RUN echo "Port 80 Exposed -> Success"

RUN echo "Web-App Success"

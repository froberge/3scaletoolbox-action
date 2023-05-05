# Use the official Ruby image as the base image
FROM ruby:2.7-alpine

# Set the working directory to /app
WORKDIR /app

# Install dependencies
RUN apk add --no-cache build-base libxml2-dev libxslt-dev

# Install the 3scale toolbox
RUN gem install 3scale_toolbox

# Copy your 3scale credentials file to the container
#COPY openapi.json /app/openapi.json

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# Set the entrypoint to the 3scale toolbox
#ENTRYPOINT ["3scale"]


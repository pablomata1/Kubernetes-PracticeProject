# Use an official Node.js runtime as a parent image
# specifies the base image to be used, which is an official Node.js runtime version 14.
FROM node:14

# Set the working directory in the container
# sets the working directory inside the container to /app.
WORKDIR /app

# Copy the application files to the working directory
# copies main.js from the host to the current directory (.) in the container.
# copies index.html from the public directory on the host to the public directory in the container.
COPY main.js .
COPY public/index.html public/index.html
COPY public/style.css public/style.css

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the application when the container launches
CMD ["node", "main.js"]

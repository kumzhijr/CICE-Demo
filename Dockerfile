#  Use an official Node.js runtime as the base image
FROM node:14

#  Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

#  Install dependencied
RUN npm install

# copy the rest of the appliation code to the working directory
COPY . .

# Expose port 3000 to outside world
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]

# Use official Node.js LTS image
FROM node:20

# Install Python (for yt-dlp-exec)
RUN apt-get update && apt-get install -y python3 python3-pip && \
    ln -s /usr/bin/python3 /usr/bin/python

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci

# Copy the rest of your code
COPY . .

# Start the bot
CMD ["npm", "start"]

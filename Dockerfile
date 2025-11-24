# Use official Node.js LTS image
FROM node:20

# Install Python and ffmpeg (for yt-dlp-exec and audio playback)
RUN apt-get update && apt-get install -y python3 python3-pip ffmpeg && \
    ln -s /usr/bin/python3 /usr/bin/python

# Print ffmpeg version and codecs for debugging
RUN ffmpeg -version && ffmpeg -codecs

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci

# Copy the rest of your code
COPY . .

# Start the bot
CMD ["npm", "start"]

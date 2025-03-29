# Stage 1: Build the application
FROM node:22 AS builder

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Build the application (if needed)
# RUN npm run build

# Stage 2: Create the distroless image
FROM gcr.io/distroless/nodejs

# Set the working directory
WORKDIR /app

# Copy the built application from the builder stage
COPY --from=builder /app /app

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["app.js"]

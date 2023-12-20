# Use the specified .NET SDK image
FROM public.ecr.aws/sam/build-dotnet7:latest-x86_64

# Set the working directory in the container
WORKDIR /app

# Copy everything from the src directory to /app in the container
COPY . .

# Publish the application to a folder with the specified runtime and configuration
RUN dotnet publish -c Release -r linux-x86_64 --self-contained true -o out
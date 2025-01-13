FROM nvcr.io/nvidia/rapidsai/notebooks:24.12-cuda12.5-py3.12


# Switch to root user before installing packages
USER root



# Update package list, install required dependencies, and clean apt cache
RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential
    
# Configure workdir inside container
WORKDIR /app

# Copy folder from host to container
COPY . .


# Install pipreqs and generate requirements.txt
RUN pip install --user pipreqs 
RUN ~/.local/bin/pipreqs /app --force --scan-notebooks --mode 'gt'


# Install the LoadDataset package from GitHub and the requirements
RUN pip install git+https://github.com/Olavo-B/LoadDataset

# Comando padrão
CMD ["bash"]

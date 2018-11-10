FROM gitlab-dl.nvidia.com:5005/dgx/tensorflow:1.12rc2-merge-py3-devel

# Install Python dependencies

RUN git clone https://github.com/tensorlayer/tensorlayer.git /tensorlayer \
 && cd /tensorlayer \
 && pip install -e .

# TensorBoard
EXPOSE 6006

# Copy SSD code and build
WORKDIR /workspace

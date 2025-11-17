FROM nvcr.io/nvidia/nemo:23.06

RUN pip install onnx==1.12.0 onnxruntime==1.12.1
RUN pip install nemo2riva==2.19.0
RUN pip install colored
RUN pip install --no-cache-dir "protobuf<5,>=3.20" "wandb>=0.16,<0.17"
RUN pip install "lightning>=2.0,<3.0"
RUN pip uninstall -y torch torchaudio torchvision torchdata k2
RUN pip install torch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 torchdata==0.7.1 --index-url https://download.pytorch.org/whl/cu121
# RUN pip install k2==1.24.3+cu121.torch2.1.0 --extra-index-url https://k2-fsa.github.io/k2/
RUN pip install --force-reinstall "wandb>=0.15.11,<0.16"
FROM vllm/vllm-openai:latest
ENV MODEL_NAME Noumaan/phi3-mini-128k-instruct-4bit-quantized
ENTRYPOINT python3 -m vllm.entrypoints.openai.api_server --model $MODEL_NAME $VLLM_ARGS
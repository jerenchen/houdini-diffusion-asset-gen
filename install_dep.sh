mkdir -p scripts/python
# install HF gradio_client and dependencies local to HDA
hython -m pip install gradio_client --target ./scripts/python
# upgrade PIL to ensure native 'webp' support
hython -m pip install --upgrade Pillow --no-cache-dir
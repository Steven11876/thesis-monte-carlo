# 2025-01-12T21:00:50.344365
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA")

comp = client.create_hls_component(name = "gbm",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

vitis.dispose()


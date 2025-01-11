# 2025-01-09T03:44:46.783861
import vitis

client = vitis.create_client()
client.set_workspace(path="GBM")

comp = client.create_hls_component(name = "gbm",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="gbm")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()


# 2025-01-09T20:34:31.313990
import vitis

client = vitis.create_client()
client.set_workspace(path="sabr")

comp = client.create_hls_component(name = "sabr",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="sabr")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")


# 2025-01-13T02:24:54.021604100
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA")

comp = client.create_hls_component(name = "sabr",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="sabr")
comp.run(operation="C_SIMULATION_DEBUG")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")


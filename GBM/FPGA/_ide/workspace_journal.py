# 2025-01-12T21:03:57.307761
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA")

comp = client.get_component(name="gbm")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="PACKAGE")


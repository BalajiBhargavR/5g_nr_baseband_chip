# Architecture Documentation

## Top-Level Block Diagram

```
+-------------------------------------------------------+
|                5G NR SoC (Baseband)                   |
| +--------+  +-------+  +---------------------------+  |
| |RISC-V  |  |  DSP  |  |   Beamformer Accelerator  |  |
| +--------+  +-------+  +---------------------------+  |
|    |         |                  |                    |
|    +------AXI Bus---------------------+              |
|                      |                |              |
|           +----------+----------+     |              |
|           | Baseband Pipeline   |     |              |
|           |   (PHY: PRACH,...)  |     |              |
|           +----------+----------+     |              |
|                      |                |              |
|                 Interfaces            |              |
|        (JESD204B, PCIe, UART/I2C)     |              |
|                      |                |              |
|                  Power Mgmt Unit      |              |
+-------------------------------------------------------+
```
- All blocks connect via AXI interconnect.
- External interfaces: JESD204B (RF), PCIe (backhaul), UART/I2C (debug).
# Architecture Documentation

## Top-Level Block Diagram

```
+-------------------------------------------------------+
|      5G NR Baseband SoC Top Level                     |
|                                                       |
|  +---------+   +-----+  +----------+    +----------+  |
|  |  RISC-V |<->| DSP |  |Beamformer|<-->| RF Front |  |
|  |  Core   |   |     |  |          |    |    End   |  |
|  +---------+   +-----+  +----------+    +----------+  |
|                                                       |
+-------------------------------------------------------+
```

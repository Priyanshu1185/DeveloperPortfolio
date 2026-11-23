# System Profile and Linux Commands

## 1. System Information

Note: This system profile was collected on macOS, not Linux.

| Component | Specification |
|---|---|
| Processor | Apple M5 |
| CPU Cores | 10 |
| RAM | 16 GB |
| Storage Device | APPLE SSD AP0512Z |
| Storage Type | SSD |
| Storage Capacity | 494.33 GB |
| Available Storage | 388.27 GB |
| File System | APFS |
| Operating System | macOS 26.6.2 |
| Kernel | Darwin 25.6.0 |
| Architecture | ARM64 |

## 2. CPU Information

- CPU Model: Apple M5
- Number of CPU cores: 10
- Architecture: ARM64

Command used:
`sysctl -n machdep.cpu.brand_string`

Command used:
`sysctl -n hw.ncpu`

## 3. RAM Information

- Total RAM: 16 GB
- Memory page size: 16384 bytes
- System-wide memory free percentage: 85%

Command used:
`sysctl -n hw.memsize`

Command used:
`memory_pressure`

## 4. Storage Information

- Storage Device: APPLE SSD AP0512Z
- Medium Type: SSD
- Capacity: 494.33 GB
- Free Space: 388.27 GB
- File System: APFS
- Protocol: Apple Fabric
- S.M.A.R.T. Status: Verified

Command used:
`system_profiler SPStorageDataType`

## 5. Operating System Information

- Operating System: macOS
- Version: 26.6.2
- Kernel: Darwin 25.6.0
- Architecture: ARM64

Commands used:
`sw_vers`
`uname -a`

## 6. Decimal to Binary Conversion

Convert decimal 75 into binary.

75 / 2 = 37 remainder 1
37 / 2 = 18 remainder 1
18 / 2 = 9 remainder 0
9 / 2 = 4 remainder 1
4 / 2 = 2 remainder 0
2 / 2 = 1 remainder 0
1 / 2 = 0 remainder 1

Reading remainders from bottom to top:

75 = 1001011 (Binary)

## 7. Binary to Decimal Conversion

Convert binary 110101 into decimal.

110101 = 1(2^5) + 1(2^4) + 0(2^3)
       + 1(2^2) + 0(2^1) + 1(2^0)

= 32 + 16 + 0 + 4 + 0 + 1

= 53 (Decimal)

## 8. Conclusion

This exercise helped me understand system information,
CPU specifications, RAM, storage, operating systems
and number system conversions using terminal commands.

The commands documented above are macOS equivalents.
They are not Linux command outputs.

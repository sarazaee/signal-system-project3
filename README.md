# signal-system-project3
MATLAB implementation of a digital communication system featuring text-to-binary encoding, signal modulation, and channel noise variance analysis.

# Signals and Systems — Computer Assignment 3: Digital Communication & Signal Encoding

This repository contains the MATLAB implementation, datasets, and complete documentation for Computer Assignment 3 of the **Signals and Systems** course at the **University of Tehran, Faculty of Electrical and Computer Engineering** (Spring 2026), under the instruction of **Dr. Saeid Akhavan**.

**Author:** Seyed Ali Rezaei  
**Student ID:** 810103432  

---

## 📂 Repository Structure & Direct Links

You can access each component of this digital communication pipeline directly via the links below:

* **Documentation:**
  * 📄 [ca3_report.pdf](./ca3_report.pdf) — Comprehensive technical report detailing encoding logic, noise variance calculations, and signal-to-noise (SNR) analysis.
* **Core Scripts & Functions:**
  * 📜 [main.m](./main.m) — The master script that executes the end-to-end pipeline from dictionary generation to noise simulation.
  * 📜 [my_encode.m](./my_encode.m) — Custom encoding function that converts plain text strings into a continuous binary signal stream.
  * 📜 [my_decode.m](./my_decode.m) — Custom decoding algorithm designed to reconstruct the original text from the received (and potentially noisy) binary signal.
* **Mapping Sets (Dictionaries):**
  * 📁 **`Mapping_Data/`** *(Directory containing the mapping datasets)*
    * 📊 [Maptset.mat](./Mapping_Data/Maptset.mat) — The 32-character ($2 \times 32$ cell array) binary dictionary mapping standard alphanumeric characters to 5-bit sequences.

---

## 📊 Sample Output & Visual Results

Below is a visualization of the original versus reconstructed signals, demonstrating the system's performance under simulated channel noise conditions:

![Encoding and Decoding Visual Output](./output.png)

---

## 🛠️ System Configuration & Requirements

To execute this digital signal processing pipeline locally, ensure your environment matches the following parameters:
- **Environment:** MATLAB R2022a or newer.
- **Required Toolboxes:** - *Communications Toolbox* (Optional; core encoding/decoding loops are implemented analytically from scratch).

### Execution Instructions
1. Clone this repository to your workstation:
   ```bash
   git clone [https://github.com/sarazaee/Digital-Signal-Encoding-MATLAB.git](https://github.com/sarazaee/Digital-Signal-Encoding-MATLAB.git)

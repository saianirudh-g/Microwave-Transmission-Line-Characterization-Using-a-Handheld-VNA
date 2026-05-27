# Antenna-Radia-Frequency-Design-using-Vector-Network-Analyser-VNAs-

# Microwave Transmission Line Characterization Using a Handheld VNA

**Authors:** Sai Anirudh Godavarthi  
---

## 📌 1. Objective  
The goal of this experiment is to determine whether the provided **50‑ohm coaxial transmission line** behaves as a **distortionless transmission line** within the frequency range **1–5 GHz**.  
Using measured S‑parameters, the **attenuation constant (α)** and **phase constant (β)** are extracted and analyzed.

---

## 🧰 2. Equipment Used  
- NanoVNA‑F V3 Handheld Vector Network Analyzer  
- Two coaxial cables (one for measurement, one for through calibration)  
- Calibration kit (Open, Short, Load, Through)  
- Computer with MATLAB installed  

---

## 📚 3. Theory  

### Propagation Constant  


\[
\gamma = \alpha + j\beta
\]



### Propagation Function  


\[
X = e^{-\gamma l} = e^{-\alpha l} e^{-j\beta l}
\]



### Intermediate Parameter  


\[
Q = \frac{S_{11}^2 + S_{21}^2 + 1}{2 S_{11}}
\]



### Reflection Coefficient  


\[
\Gamma = Q \pm \sqrt{Q^2 - 1}
\]



### Propagation Function  


\[
X = \frac{(S_{11} + S_{21}) - \Gamma}{1 - (S_{11} + S_{21})}
\]



### Extracting α and β  


\[
\alpha = -\frac{\ln |X|}{l}, \qquad 
\beta = -\frac{\arg(X)}{l}
\]



---

## 📡 4. Measurements (1–5 GHz)

| Parameter | 1 GHz | 2 GHz | 3 GHz | 4 GHz | 5 GHz |
|----------|-------|-------|-------|-------|-------|
| **S11 (dB)** | -32 | -32.65 | -29.68 | -20.90 | -8.63 |
| **S11 Phase (°)** | -66.1 | -108.74 | 157.05 | 155.34 | 65.99 |
| **S21 (dB)** | 2.96 | 3.26 | 1.63 | 3.88 | 1.09 |
| **S21 Phase (°)** | -52.32 | -95.59 | -120.71 | 175.78 | 134.32 |

---

## 📷 5. Measurement Pictures  
- Calibration completed  
- Cable connected to VNA  
- S‑parameter measurements at 1–5 GHz  

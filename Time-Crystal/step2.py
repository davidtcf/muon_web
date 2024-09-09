import numpy as np
import matplotlib.pyplot as plt
from scipy.linalg import expm

# Pauli matrices
sigma_z = np.array([[1, 0], [0, -1]])
sigma_x = np.array([[0, 1], [1, 0]])

# Constants
gamma = 1
B_x = 1
hbar = 1
t_max = 100
dt = 0.01
B_z_min, B_z_max = 0, 20
num_B_z = 200

# Spin
s_z=sigma_z*hbar*0.5
s_x=sigma_x*hbar*0.5

# Time and B_z arrays
t = np.arange(0, t_max, dt)
B_z_values = np.linspace(B_z_min, B_z_max, num_B_z)

# Initial state: eigenstate of S_z
initial_state = np.array([1, 0])

# Function to compute time evolution operator U(t) = exp(-i H t / hbar)
def time_evolution_operator(H, t, hbar):
    return expm(-1j * H * t / hbar)

# Create a 2D array to store probabilities for each (time, B_z) pair
probabilities = np.zeros((len(t), len(B_z_values)))

# Loop over different values of B_z and time to compute probabilities
for i, B_z in enumerate(B_z_values):
    # Hamiltonian of Spin - 1/2 particle
    H = -gamma * (B_z * s_z + B_x * s_x)
    
    for j, time in enumerate(t):
        U_t = time_evolution_operator(H, time, hbar)
        state_t = np.matmul(U_t, initial_state)
        probability = np.abs(np.vdot(initial_state, state_t))**2
        probabilities[j, i] = probability

# Plot probability as a function of time and B_z
plt.figure(figsize=(10, 6))
plt.imshow(probabilities, extent=[B_z_min, B_z_max, 0, t_max], aspect='auto', cmap='viridis')
plt.colorbar(label='Probability')
plt.xlabel('B_z')
plt.ylabel('Time')
plt.title('Single Spin undergo Rabi Oscillation')
plt.show()

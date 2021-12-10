# Create a phase diagram of a hypothetical substance.
# 
# FP students _are not required_ to know this.
# Curious students may learn something, anyway. :)
#
# JMR@ua.pt 2017

import numpy as np
import matplotlib.pyplot as plt

# temperature and pressure of triple-point:
t = 400.0  # in Kelvin
p = 50.0   # in kPa

# axis limits:
t0, t1 = 0.0, 1000.0
p0, p1 = 0.0, 200.0

plt.figure(1, figsize=(3, 2.5), dpi=200, constrained_layout=True)
# Solid
plt.fill([t0, t, t, t0], [p0, p, p1, p1], 'g', alpha=0.2)
plt.text(0.5*t0 + 0.5*t, 0.5*p + 0.5*p1, "Solid",
        horizontalalignment='center', verticalalignment='center')
# Liquid
plt.fill([t, t1, t1, t], [p, p, p1, p1], 'b', alpha=0.2)
plt.text(0.5*t + 0.5*t1, 0.5*p + 0.5*p1, "Liquid",
        horizontalalignment='center', verticalalignment='center')
# Gas
plt.fill([t0, t1, t1, t], [p0, p0, p, p], 'c', alpha=0.1)
plt.text(0.5*t0 + 0.5*t1, 0.5*p0 + 0.5*p, "Gas",
        horizontalalignment='center', verticalalignment='center')

# The "Normal Temperature and Pressure" point:
plt.plot([293.15],[101.325], 'ko')

plt.title("Phase Diagram of Kryptonite")
plt.xlabel("Temperature (K)")
plt.ylabel("Pressure (kPa)")
plt.axis([t0, t1, p0, p1])
plt.grid()

plt.show()
plt.savefig("kryptonite.png")


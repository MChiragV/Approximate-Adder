import matplotlib.pyplot as plt
import numpy as np

designs = ["LOA", "LOAWA", "OLOCA", "HOERAA", "ETAI", "CPETA", "ECPETA", "HERLOA"]
power_nmed = [1, 1.577253474, 0.948268271, 0.802122257, 1.87243025, 0.866888087, 1.000537012, 0.874228069]
energy_nmed = [1, 1.395580299, 0.948268271, 0.80632185, 1.656757656, 0.803346551, 0.976964151, 0.810148524]
edp_nmed = [1, 1.23483283, 0.948268271, 0.81054343, 1.465926931, 0.744462511, 0.953946671, 0.75076591]

bar_width = 0.25
x_indices = np.arange(len(designs))
fig, axes = plt.subplots(1, 3, figsize=(15, 5), sharey=True)

# Plot for power_nmed
bars_0 = axes[0].bar(designs, power_nmed, color="red")
axes[0].set_title("Normalized Power-NMED", fontsize=14)
axes[0].set_ylabel("Normalized Value", fontsize=12)
axes[0].set_xticks(range(len(designs)))
axes[0].set_xticklabels(designs, rotation=45, fontsize=10)
axes[0].grid(axis="y", linestyle="--", alpha=0.7)
for bar in bars_0:
    yval = bar.get_height()
    axes[0].text(bar.get_x() + bar.get_width()/2, yval + 0.05, round(yval, 2), ha='center', va='bottom', fontsize=10)

# Plot for energy_nmed
bars_1 = axes[1].bar(designs, energy_nmed, color="green")
axes[1].set_title("Normalized Energy-NMED", fontsize=14)
axes[1].set_xticks(range(len(designs)))
axes[1].set_xticklabels(designs, rotation=45, fontsize=10)
axes[1].grid(axis="y", linestyle="--", alpha=0.7)
for bar in bars_1:
    yval = bar.get_height()
    axes[1].text(bar.get_x() + bar.get_width()/2, yval + 0.05, round(yval, 2), ha='center', va='bottom', fontsize=10)

# Plot for edp_nmed
bars_2 = axes[2].bar(designs, edp_nmed, color="blue")
axes[2].set_title("Normalized EDP-NMED", fontsize=14)
axes[2].set_xticks(range(len(designs)))
axes[2].set_xticklabels(designs, rotation=45, fontsize=10)
axes[2].grid(axis="y", linestyle="--", alpha=0.7)
for bar in bars_2:
    yval = bar.get_height()
    axes[2].text(bar.get_x() + bar.get_width()/2, yval + 0.05, round(yval, 2), ha='center', va='bottom', fontsize=10)

plt.tight_layout()
plt.show()


import matplotlib.pyplot as plt

# Define the path to the directory
path = r"##File path##"

# Create vectors for storing vov, gm/id, gm/gds, id/W
vov = [[] for _ in range(8)]
gm_id = [[] for _ in range(8)]
gm_gds = [[] for _ in range(8)]
id_W = [[] for _ in range(8)]
W = 2e-6

# Read data from the text files
for i in range(8):
    filename = path + "gmid_pmos_" + str(i+1) + "_pfet_03v3_tb.txt"
    try:
        with open(filename, 'r') as fID:
            for line in fID:
                try:
                    temp = list(map(float, line.strip().split()))
                    # Ensure temp has enough elements
                    if len(temp) >= 8:
                        vov_value = temp[0] - temp[5]
                        if vov_value > 0:
                            vov[i].append(vov_value)
                            gm_id[i].append(temp[1] / temp[3])
                            gm_gds[i].append(temp[1] / temp[7])
                            id_W[i].append(temp[3] / W)
                except (ValueError, IndexError) as e:
                    print(f"Warning: Skipping line due to error: {e}")
    except FileNotFoundError:
        print(f"Error: File {filename} not found.")
    except Exception as e:
        print(f"Error: An unexpected error occurred with file {filename}: {e}")

# Plot gm/id versus Vov
plt.figure()
for i in range(8):
    plt.plot(vov[i], gm_id[i], marker='o', linestyle='-', label=f"L={['0.1u', '0.2u', '0.3u', '0.4u', '0.5u', '0.6u', '0.7u', '0.8u'][i]}")
plt.xlabel('Vov')
plt.ylabel('gm/id')
plt.title('gm/id versus V_{ov}')
plt.grid(True)
plt.legend()
plt.show()

# Plot gm/gds versus gm/id
plt.figure()
for i in range(8):
    plt.plot(gm_id[i], gm_gds[i], marker='o', linestyle='-', label=f"L={['0.1u', '0.2u', '0.3u', '0.4u', '0.5u', '0.6u', '0.7u', '0.8u'][i]}")
plt.xlabel('gm/id')
plt.ylabel('gm/gds')
plt.title('gm/gds vs gm/id')
plt.grid(True)
plt.legend()
plt.show()

# Plot id/W versus gm/id
plt.figure()
for i in range(8):
    plt.plot(gm_id[i], id_W[i], marker='o', linestyle='-', label=f"L={['0.1u', '0.2u', '0.3u', '0.4u', '0.5u', '0.6u', '0.7u', '0.8u'][i]}")
plt.xlabel('gm/id')
plt.ylabel('id/W')
plt.title('id/W vs gm/id')
plt.grid(True)
plt.legend()
plt.show()

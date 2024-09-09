import matplotlib.pyplot as plt
from matplotlib.widgets import CheckButtons

# Define the path to the directory
path = r"##FilePath##"

# Initialize lists for storing results
vov = [[] for _ in range(8)]
gm_id = [[] for _ in range(8)]
gm_gds = [[] for _ in range(8)]
id_W = [[] for _ in range(8)]
W = 2e-6

# Read data from the text files
for i in range(8):
    filename = path + "gmid_nmos_" + str(i+1) + "_nfet_01v8_lvt_tb.txt"
    try:
        with open(filename, 'r') as fID:
            for line in fID:
                try:
                    temp = list(map(float, line.strip().split()))
                    if len(temp) >= 8:
                        Vgs = temp[0]
                        gm = temp[1]
                        id_val = temp[3]
                        Vth = temp[5]
                        gds = temp[7]

                        vov_value = Vgs - Vth
                        if vov_value > 0:
                            vov[i].append(vov_value)
                            gm_id[i].append(gm / id_val)
                            gm_gds[i].append(gm / gds)
                            id_W[i].append(id_val / W)
                except (ValueError, IndexError) as e:
                    print(f"Warning: Skipping line due to error: {e}")
    except FileNotFoundError:
        print(f"Error: File {filename} not found.")
    except Exception as e:
        print(f"Error: An unexpected error occurred with file {filename}: {e}")

# Labels for different transistor lengths
labels = ['0.28u', '0.3u', '0.5u', '1u', '1.5u', '2u', '2.5u', '3u']

# Function to plot with checkboxes for toggling visibility
def plot_with_checkboxes(x_data, y_data, x_label, y_label, title):
    fig, ax = plt.subplots()
    plt.subplots_adjust(left=0.2, right=0.8)  # Adjust for space for checkboxes

    # Plot lines
    lines = []
    for i in range(8):
        line, = ax.plot(x_data[i], y_data[i], marker='o', linestyle='-', label=f"L={labels[i]}")
        lines.append(line)

    # Set labels, title, and grid
    ax.set_xlabel(x_label)
    ax.set_ylabel(y_label)
    ax.set_title(title)
    ax.grid(True)
    ax.legend()

    # Add checkboxes
    rax = plt.axes([0.82, 0.4, 0.1, 0.4])
    visibility = [True] * 8  # Initialize all to be visible
    check = CheckButtons(rax, labels, visibility)

    # Function to handle checkbox toggle
    def toggle_lines(label):
        index = labels.index(label)
        lines[index].set_visible(not lines[index].get_visible())
        plt.draw()

    check.on_clicked(toggle_lines)
    plt.show()

# Plot gm/id versus Vov
plot_with_checkboxes(vov, gm_id, 'Vov', 'gm/id', 'gm/id versus V_{ov}')

# Plot gm/gds versus gm/id
plot_with_checkboxes(gm_id, gm_gds, 'gm/id', 'gm/gds', 'gm/gds versus gm/id')

# Plot id/W versus gm/id
plot_with_checkboxes(gm_id, id_W, 'gm/id', 'id/W', 'id/W versus gm/id')

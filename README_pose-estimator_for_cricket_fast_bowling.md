# Pose Estimator with Angle Extraction, Wrist Speed and KMeans Clustering

This project focuses on analyzing bowling technique from a **side-view video** using **MediaPipe Pose Estimation**. It computes joint angles (Landmarks) and wrist speed to provide biomechanical insights. All computed angles and metrics are exported to CSV for further analysis.

## Features

- Pose landmark extraction with **MediaPipe**
- Angle calculation between key joints (e.g., shoulder, elbow, wrist, leg)
- Linear wrist speed tracking during bowling motion
- CSV export of angle and motion data
- Designed for **side-on camera perspective**
- Visualizations and Pandas-based data manipulation
- Per-feature **KMeans Clustering**
- Visualizations to understand bowler’s pose dynamics
- Focused on a **single bowler scenario**



---

## Dependencies (Automatically installed by *.ipynb)

- Python 3.x
- [MediaPipe](https://mediapipe.dev/)
- OpenCV
- Pandas
- NumPy
- Matplotlib
- glob
- sKLearn
- tslearn
- Jupyter Notebook

---

## Getting Started

### Installation

Clone the repository:

```bash
git clone https://github.com/Nswordman062413/CricketPoseEstimation.git
```

Open **.ipynb in Jupyter Lab**:

Ensure you have a compatible video input (clear side view of bowler).

---

### How It Works

1. **Video Input**:
   - Process each frame with MediaPipe to extract pose landmarks.

2. **Angle Calculations**:
   - Compute joint angles using vector math (e.g., elbow angle from shoulder-elbow-wrist).
   - Export angle data to a CSV file for each frame.

3. **Wrist Speed Estimation**:
   - Calculate linear wrist movement velocity across frames.
   - Visualize speed variation throughout the bowling action.

4. **CSV Export**:
   - Output includes timestamps, angles, and wrist speed.
   - Ready for further biomechanical or coaching analysis.

5. **Feature Engineering**:
   - Extract pose features such as joint angles, limb distances, and coordinate data.
   - Normalize and clean data per feature.

6. **Clustering with KMeans**:
   - Perform KMeans clustering **per feature** to better isolate movement patterns.
   - Visualize and compare clustered poses to detect variation or errors in technique.

7. **Output Analysis**:
   - Cluster labels stored per frame.
   - Visualizations help interpret biomechanical movement clusters.


---

## Example Output

- CSV with columns like:
  - `frame`, `elbow_angle`, `shoulder_angle`, `wrist_speed`, `timestamp`
- Plots showing:
  - Elbow angle over time
  - Wrist speed trajectory

| frame_counter | frame_time | left_arm_angle | right_arm_angle | left_leg_angle | right_leg_angle | left_foot_angle | right_foot_angle | left_wrist_angle | right_wrist_angle | Speed |
|---------------|------------|----------------|------------------|----------------|------------------|------------------|-------------------|-------------------|--------------------|--------|
| 0             | -1         | 181.91         | 177.66           | 120.91         | 182.03           | 242.02           | 201.30            | 163.19            | 137.58             | 0      |
| 1             | -0.97      | 111.91         | 275.77           | 141.35         | 175.17           | 118.76           | 104.75            | 181.75            | 140.99             | 6.7    |
| 2             | -0.93      | 91.80          | 297.93           | 146.42         | 152.71           | 148.82           | 231.14            | 178.70            | 102.77             | 1.9    |
| 3             | -0.90      | 74.29          | 275.99           | 165.81         | 207.81           | 124.32           | 204.46            | 180.85            | 129.31             | 1.4    |
| 4             | -0.87      | 96.12          | 238.00           | 179.55         | 187.75           | 231.55           | 222.76            | 193.48            | 137.33             | 2.8    |
| 6             | -0.80      | 77.25          | 3.00             | 193.36         | 192.94           | 152.23           | 163.68            | 260.80            | 155.63             | 3.8    |
| 7             | -0.77      | 177.39         | 33.21            | 187.96         | 190.08           | 132.99           | 142.30            | 197.26            | 120.98             | 0      |
| 8             | -0.73      | 51.86          | 59.75            | 181.57         | 191.21           | 140.91           | 122.27            | 190.55            | 132.99             | 2.4    |
| 9             | -0.70      | 40.26          | 46.06            | 182.50         | 188.96           | 194.93           | 164.04            | 135.91            | 160.40             | 3.1    |
| 10            | -0.67      | 9.72           | 7.20             | 157.99         | 184.79           | 195.58           | 167.92            | 15.68             | 162.25             | 1.9    |
| 11            | -0.63      | 0.24           | 23.32            | 188.09         | 180.62           | 175.42           | 176.51            | 82.58             | 183.85             | 3.0    |
| 12            | -0.60      | 49.09          | 35.49            | 194.10         | 194.68           | 169.70           | 166.97            | 170.68            | 66.10              | 3.0    |
| 13            | -0.57      | 26.89          | 49.00            | 186.25         | 201.42           | 159.84           | 168.60            | 177.23            | 98.07              | 1.2    |
| 14            | -0.53      | 143.74         | 34.89            | 184.81         | 211.16           | 162.22           | 158.67            | 74.39             | 157.67             | 0.4    |
| 15            | -0.50      | 62.00          | 32.98            | 185.49         | 209.13           | 163.34           | 158.25            | 198.12            | 218.44             | 2.1    |
| 16            | -0.47      | 196.45         | 98.70            | 181.54         | 195.50           | 151.31           | 142.79            | 62.65             | 213.95             | 3.1    |
| 17            | -0.43      | 179.54         | 263.47           | 180.65         | 178.04           | 155.34           | 147.76            | 120.26            | 189.44             | 2.9    |


## Notes

- Video must clearly capture the bowler's side profile.
- Designed primarily for **right-arm bowlers**, can be adapted for left-arm bowlers with minor changes.
- Wrist speed is approximate and based on pixel movement across frames.
- Designed for analysis of training/performance video
- Highly customizable for different pose features or clustering techniques


---

## Future Work

- Add support for automatic phase segmentation (run-up, jump, release)
- Enhance wrist speed accuracy with real-world calibration
- Integrate multi-angle multi-person video analysis

---

## License

This project is licensed under the MIT License. See `LICENSE` for details.

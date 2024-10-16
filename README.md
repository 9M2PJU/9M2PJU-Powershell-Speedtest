# 9M2PJU Powershell Speedtest v1.0

A PowerShell script that automatically downloads the Speedtest CLI, accepts the license, runs a speedtest, and displays the results in a detailed, step-by-step manner.

## Features
- Automatically downloads and extracts Speedtest CLI if not found.
- Runs the speedtest after accepting the license.
- Displays test results (ping, download speed, upload speed, server, and ISP).
- Provides detailed step-by-step feedback (simulated verbose mode).

## Requirements
- Windows PowerShell
- Internet connection

## Usage

1. **Download the script**:  
   Clone the repository or download the `.ps1` script directly.

   ```bash
   git clone https://github.com/yourusername/9M2PJU_Powershell_Speedtest.git
   ```

2. **Run the script**:  
   Open PowerShell and navigate to the directory where the script is located, then run:

   ```powershell
   .\9M2PJU_Powershell_Speedtest.ps1
   ```

3. **Output**:  
   The script will:
   - Check if Speedtest CLI is installed; if not, it will download and install it.
   - Run the speedtest.
   - Display the results, including:
     - Test server and location.
     - Ping (latency in ms).
     - Download speed (Mbps).
     - Upload speed (Mbps).
     - ISP name.
     - Timestamp of the test.

### Example Output

```
 ## ##   ##   ##  ## ##    ### ##      ####  ##  ###  
 #   ##   ## ##   ##  ##    ##  ##      ##   ##   ##  
##   ##  # ### #      ##    ##  ##      ##   ##   ##  
 ## ###  ## # ##     ##     ##  ##      ##   ##   ##  
     ##  ##   ##    ##      ## ##   ##  ##   ##   ##  
##   ##  ##   ##   #   ##   ##      ##  ##   ##   ##  
 ## ##   ##   ##  ######   ####      ## #     ## ##   

9M2PJU Powershell Speedtest v1.0
--------------------------------

Checking if Speedtest CLI is already present...
Speedtest CLI already exists. Skipping download.
Running speedtest...
Parsing speedtest results...

Test Server: Example Server in Example Location
Ping: 25 ms
Download Speed: 150.75 Mbps
Upload Speed: 50.25 Mbps
ISP: Example ISP
Test Timestamp: 2024-10-17T14:35:22Z

Speedtest complete.
```




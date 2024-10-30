
## 🌐 Socials:
[![Facebook](https://img.shields.io/badge/Facebook-%231877F2.svg?logo=Facebook&logoColor=white)](https://facebook.com/https://www.facebook.com/faizul.9m2pju) [![TikTok](https://img.shields.io/badge/TikTok-%23000000.svg?logo=TikTok&logoColor=white)](https://tiktok.com/@9m2pju) [![YouTube](https://img.shields.io/badge/YouTube-%23FF0000.svg?logo=YouTube&logoColor=white)](https://youtube.com/@http://www.youtube.com/@9m2pju) 

# 💻 Tech Stack:
![Raspberry Pi](https://img.shields.io/badge/-RaspberryPi-C51A4A?style=for-the-badge&logo=Raspberry-Pi) ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white) ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) ![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) ![Windows Terminal](https://img.shields.io/badge/Windows%20Terminal-%234D4D4D.svg?style=for-the-badge&logo=windows-terminal&logoColor=white) ![YAML](https://img.shields.io/badge/yaml-%23ffffff.svg?style=for-the-badge&logo=yaml&logoColor=151515) ![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?style=for-the-badge&logo=Cloudflare&logoColor=white) ![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)
# 📊 GitHub Stats:
![](https://github-readme-stats.vercel.app/api?username=9M2PJU&theme=dark&hide_border=false&include_all_commits=false&count_private=false)<br/>
![](https://github-readme-streak-stats.herokuapp.com/?user=9M2PJU&theme=dark&hide_border=false)<br/>
![](https://github-readme-stats.vercel.app/api/top-langs/?username=9M2PJU&theme=dark&hide_border=false&include_all_commits=false&count_private=false&layout=compact)

## 🏆 GitHub Trophies
![](https://github-profile-trophy.vercel.app/?username=9M2PJU&theme=radical&no-frame=false&no-bg=true&margin-w=4)

---
[![](https://visitcount.itsvg.in/api?id=9M2PJU&icon=0&color=0)](https://visitcount.itsvg.in)

  ## 💰 You can help me by Donating
  [![PayPal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/9m2pju) 

  
<!-- Proudly created with GPRM ( https://gprm.itsvg.in ) -->

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
   git clone https://github.com/9M2PJU/9M2PJU_Powershell_Speedtest.git
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

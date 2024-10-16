# 9M2PJU Powershell Speedtest v1.0
# This script downloads Speedtest CLI, accepts the license, runs a speedtest, and displays detailed output.

$asciiArt = @"
 ## ##   ##   ##  ## ##    ### ##      ####  ##  ###  
 #   ##   ## ##   ##  ##    ##  ##      ##   ##   ##  
##   ##  # ### #      ##    ##  ##      ##   ##   ##  
 ## ###  ## # ##     ##     ##  ##      ##   ##   ##  
     ##  ##   ##    ##      ## ##   ##  ##   ##   ##  
##   ##  ##   ##   #   ##   ##      ##  ##   ##   ##  
 ## ##   ##   ##  ######   ####      ## #     ## ##   
                                                     
"@

# Display ASCII art and script information
Write-Host $asciiArt -ForegroundColor Cyan
Write-Host "9M2PJU Powershell Speedtest v1.0" -ForegroundColor Cyan
Write-Host "--------------------------------" -ForegroundColor Cyan
Write-Host ""

# Variables for speedtest-cli
$speedtestExecutable = "$PWD\speedtest.exe"
$speedtestZip = "$PWD\speedtest.zip"
$speedtestDownloadURL = "https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-win64.zip"

# Step 1: Check if Speedtest CLI is already downloaded
Write-Host "Checking if Speedtest CLI is already present..." -ForegroundColor Yellow
if (-Not (Test-Path $speedtestExecutable)) {
    Write-Host "Speedtest CLI not found. Downloading Speedtest CLI..." -ForegroundColor Yellow
    
    # Step 2: Download Speedtest CLI
    try {
        Write-Host "Downloading from $speedtestDownloadURL" -ForegroundColor Green
        Invoke-WebRequest -Uri $speedtestDownloadURL -OutFile $speedtestZip
        Write-Host "Speedtest CLI downloaded successfully." -ForegroundColor Green
    }
    catch {
        Write-Host "Error downloading Speedtest CLI. Exiting..." -ForegroundColor Red
        Exit
    }

    # Step 3: Extract the downloaded zip file
    Write-Host "Extracting Speedtest CLI..." -ForegroundColor Yellow
    try {
        Expand-Archive -Path $speedtestZip -DestinationPath $PWD -Force
        Write-Host "Extraction completed." -ForegroundColor Green
    }
    catch {
        Write-Host "Error extracting Speedtest CLI. Exiting..." -ForegroundColor Red
        Exit
    }

    # Step 4: Cleanup the downloaded zip file
    Remove-Item $speedtestZip
    Write-Host "Cleaned up zip file." -ForegroundColor Green
} else {
    Write-Host "Speedtest CLI already exists. Skipping download." -ForegroundColor Green
}

# Step 5: Run the speedtest with license acceptance
Write-Host "Running speedtest..." -ForegroundColor Green
$speedtestResult = & $speedtestExecutable --accept-license --format=json
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: Speedtest failed to run." -ForegroundColor Red
    Exit
}

# Step 6: Parse and display the results
Write-Host "Parsing speedtest results..." -ForegroundColor Yellow
$speedtestData = $speedtestResult | ConvertFrom-Json

# Step 7: Display speedtest data
Write-Host "Test Server: " $speedtestData.server.name " in " $speedtestData.server.location
Write-Host "Ping: " $speedtestData.ping.latency " ms"
Write-Host "Download Speed: " ([math]::round($speedtestData.download.bandwidth / 125000, 2)) " Mbps"
Write-Host "Upload Speed: " ([math]::round($speedtestData.upload.bandwidth / 125000, 2)) " Mbps"
Write-Host "ISP: " $speedtestData.isp
Write-Host "Test Timestamp: " $speedtestData.timestamp

# Step 8: End of script
Write-Host ""
Write-Host "Speedtest complete."

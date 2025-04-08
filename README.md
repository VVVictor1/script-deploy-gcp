# Google Cloud VM Deployment Script

## 🚀 Purpose
This script automates the deployment of a Virtual Machine (VM) on Google Cloud Platform (GCP) using Bash.

---

## 🧰 Prerequisites

Before running the script, ensure you have the following:

- A Google Cloud account 
- A Google Cloud project created
- Billing account enabled
- Google Cloud SDK installed ([Install Guide](https://cloud.google.com/sdk/docs/install))
- APIs enabled:
  - Compute Engine API
  - IAM API

---

## 📂 Files

- `deploy_victorVM.sh` – the main deployment script

---

## ⚙️ What It Does

This script performs the following:

1. Creates a static external IP address
2. Creates a firewall rule to allow SSH and HTTP
3. Launches a VM with:
   - 2 vCPUs, 8 GB RAM
   - 250 GB storage
   - Ubuntu 20.04 LTS
4. Assigns the static IP to the VM
5. Tags the VM for HTTP access

---

## 🖥️ How to Run the Script

### Option 1: From Google Cloud Shell (Recommended)

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Click the **Activate Cloud Shell** icon (top-right terminal icon)
3. Upload the script using the “Upload File” button
4. Make it executable:
   ```bash
   chmod +x deploy_victorVM.sh
   ./deploy_victorVM.sh

  ### Option 2: From Windows CMD with Google Cloud SDK

  1.Install Google Cloud SDK
  2.gcloud auth login
  3.gcloud config set project [your-project-id]
  4.bash deploy_victorVM.sh



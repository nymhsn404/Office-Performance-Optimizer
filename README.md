# 🛠️ Office Performance Optimizer

A lightweight Windows Batch Script designed to improve the performance of **older Windows 10/11 PCs**, especially systems used for **Microsoft Office, Outlook, Excel, Word, PDF and everyday office work**.

The script reduces unnecessary background activity, cleans temporary files, optimizes visual effects, and gives users control over automatic Windows Updates.

## ✨ Features

- 🧹 Cleans Windows temporary files
- 🖼️ Cleans thumbnail and icon cache
- ⚡ Optimizes Windows visual effects for performance
- 🛑 Stops common unnecessary background applications
- 📦 Reduces Delivery Optimization background activity
- 🔄 Disables automatic Windows Update
- 🛡️ Keeps Microsoft Defender enabled
- 🔥 Keeps Windows Firewall enabled
- 🌐 Keeps DHCP, DNS and network services enabled
- 📝 Creates an optimization log
- 🔁 Provides an option to restart the PC

## 🎯 Designed For

This tool is mainly intended for:

- Older office PCs
- Windows 10/11 systems with limited RAM/CPU
- PCs running Microsoft Word
- Microsoft Excel users
- Microsoft Outlook users
- General office productivity systems

## ⚙️ What It Does

The script performs several safe optimization tasks:

```text
Temporary Files       → Cleaned
Icon/Thumbnail Cache  → Cleaned
Visual Effects        → Optimized
Background Apps       → Reduced
Delivery Optimization → Manual
Windows Update Auto   → OFF
Defender              → ON
Firewall              → ON
Network Services      → ON
```

## 🚀 How to Use

1. Download `Office_Performance_Optimizer.bat`
2. Right-click the file
3. Select **Run as administrator**
4. Allow the script to complete
5. Restart the PC when prompted

## ⚠️ Important

This script disables **automatic Windows Update services**.

Windows Updates should still be performed manually when required.

For security, regularly check for and install important Windows security updates.

The script does **not** intentionally disable:

- Microsoft Defender
- Windows Firewall
- DHCP
- DNS
- RPC
- Windows Event Log
- Workstation service
- Server service
- Other critical networking/security services

## 📋 Log

After execution, the script creates:

```text
Office_Optimizer_Log.txt
```

in the same directory as the BAT file.

## 💻 Compatibility

Tested/targeted for:

- Windows 10
- Windows 11

Administrator privileges are required.

## 🔐 Disclaimer

Use this script at your own risk.

System configurations and installed applications differ between computers. Always test the script on a non-critical machine before deploying it across an organization.

For business environments, Windows Update policies should preferably be managed through **Group Policy, Intune, or centralized endpoint management** rather than individual scripts.

## 📌 Project Goal

The goal of this project is to provide a simple, transparent and lightweight optimization tool for older office computers without aggressively disabling critical Windows security and networking components.

---

### Author

**Nayeem Hassan**

IT Support Engineer | System Administration | Networking | Cybersecurity

#Windows #Windows11 #Windows10 #PowerShell #BatchScript #ITSupport #SystemAdministration #OfficeOptimization

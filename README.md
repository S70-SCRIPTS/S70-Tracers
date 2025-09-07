# 🔫 S70 Tracers

FiveM script that adds synchronized bullet tracers using customizable particle effects.

## ✨ Features
- Real-time bullet tracer effects.  
- Server-to-client synchronization (all players see tracers).  
- Optimized and lightweight.  
- Multiple tracer colors available.  

## 📂 How it Works
1. Client detects when a player shoots.  
2. Gets shooter position and bullet impact point.  
3. Sends data to the server.  
4. Server syncs tracer data with all players.  
5. Particle effect is displayed as a tracer.  

## 🎨 Tracer Colors
- Inside the repository, there is a `tracer-colors` folder containing different color variations.  
- Each color has its own `core.ypt` file.  
- To use a different color:  
  1. Open the desired color folder (e.g., `cyan/`).  
  2. Copy the `core.ypt` file.  
  3. Paste it into the `S70-Tracer` folder (replace the existing `core.ypt`).  

This will change the tracer effect color in-game.

## 🚀 Installation
1. Download or clone this repository.  
2. Place `S70-Tracer` into your server’s `resources` folder.  
3. (Optional) Replace the default `core.ypt` with a color of your choice from the `tracer-colors` folder.  
4. Add this line to your `server.cfg`:  


## ℹ️ Preview
<img width="819" height="439" alt="tracer" src="https://github.com/user-attachments/assets/caa29878-0b95-4f43-981d-db5d50928ec5" />


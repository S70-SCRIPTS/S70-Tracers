# 🔫 S70 Tracers

A lightweight FiveM script that adds synchronized bullet tracers using customizable particle effects.

## ✨ Features
- Real-time bullet tracer effects.  
- Server-to-client synchronization (all players see tracers).  
- Optimized and lightweight.  
- Fully customizable with custom `.ypt` particle files.  

## 📂 How it Works
1. Client detects when a player shoots.  
2. Gets shooter position and bullet impact point.  
3. Sends data to the server.  
4. Server syncs tracer data with all players.  
5. Particle effect is displayed as a tracer.  

## ⚙️ Configuration
- Edit `tracerDict` and `tracerEffect` in `client.lua` to match your particle dictionary/effect.  
- Add custom `.ypt` files to change the tracer style.  

## 🚀 Installation
1. Download or clone this repository.  
2. Place `s70_tracers` into your server’s `resources` folder.  
3. Add this line to your `server.cfg`:  

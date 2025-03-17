#!/bin/bash

# Erstelle die Verzeichnisse, falls sie nicht existieren
mkdir -p SwarmUI/Models/diffusion_models
mkdir -p SwarmUI/Models/clip
mkdir -p SwarmUI/Models/vae
mkdir -p SwarmUI/Models/clip_vision

# Dateien nacheinander herunterladen
curl -L -o SwarmUI/Models/diffusion_models/wan2.1_i2v_480p_14B_fp8_scaled.safetensors https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/diffusion_models/wan2.1_i2v_480p_14B_fp8_scaled.safetensors

curl -L -o SwarmUI/Models/clip/umt5_xxl_fp8_e4m3fn_scaled.safetensors "https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors"

curl -L -o SwarmUI/Models/VAE/wan_2.1_vae.safetensors "https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors"

curl -L -o SwarmUI/Models/clip_vision/clip_vision_h.safetensors "https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/clip_vision/clip_vision_h.safetensors"

echo "Alle Downloads abgeschlossen."

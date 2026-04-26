Skill & Soul Private AI Suite
Optional Image Generation Pack for Windows

This package is split into multiple files because GitHub Releases does not allow very large single uploads.

FILES YOU SHOULD SEE
- Skill-Soul-Private-AI-Suite-Image-Pack-Base.zip
- SSD-1B-modelspec.part1
- SSD-1B-modelspec.part2
- SSD-1B-modelspec.part3
- REASSEMBLE-CHECKPOINT.bat

WHAT TO DO
1. Download every file from the Windows Image Pack release.
2. Extract Skill-Soul-Private-AI-Suite-Image-Pack-Base.zip.
3. Put SSD-1B-modelspec.part1, SSD-1B-modelspec.part2, SSD-1B-modelspec.part3, and REASSEMBLE-CHECKPOINT.bat into this folder:
   ComfyUI_windows_portable\ComfyUI\models\checkpoints
4. Double-click REASSEMBLE-CHECKPOINT.bat.
5. Wait until SSD-1B-modelspec.safetensors is created.
6. Move the completed image-backend-bin files into the workstation install if needed, then open the app and use Image Studio.

NOTES
- Do not rename the part files before running the batch file.
- Keep all three part files in the same folder.
- The batch file only rebuilds the large checkpoint file.
- After the .safetensors file is created successfully, the .part files can be deleted.

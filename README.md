# Skill & Soul Private AI Suite Image Pack

This repository is the separate home for the optional image generation pack used by Skill & Soul Private AI Suite.

## What this repo is for

- Hold the image-pack instructions
- Hold lightweight helper files such as the checkpoint reassembly script
- Publish the actual image pack as GitHub Release assets

## Important GitHub size note

The main checkpoint parts are too large for normal git commits.
Do not try to commit these files into the repository history:

- `SSD-1B-modelspec.part1`
- `SSD-1B-modelspec.part2`
- `SSD-1B-modelspec.part3`

Instead, upload them to a GitHub Release for this repo.

## Recommended release assets

- `README-IMAGE-PACK.txt`
- `REASSEMBLE-CHECKPOINT.bat`
- `Skill-Soul-Private-AI-Suite-Image-Pack-Base.zip`
- `SSD-1B-modelspec.part1`
- `SSD-1B-modelspec.part2`
- `SSD-1B-modelspec.part3`

## Customer flow

1. Download every file from the Image Pack release.
2. Extract `Skill-Soul-Private-AI-Suite-Image-Pack-Base.zip`.
3. Move the `.part` files and `REASSEMBLE-CHECKPOINT.bat` into the checkpoints folder from the extracted package.
4. Run `REASSEMBLE-CHECKPOINT.bat`.
5. Wait for the final checkpoint file to be rebuilt.

## Current platform scope

This image pack is currently Windows-oriented because the included instructions target `ComfyUI_windows_portable` and the helper script is a `.bat` file.

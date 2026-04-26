# Skill & Soul Private AI Suite Image Pack

This repository is the separate home for the optional image generation pack used by Skill & Soul Private AI Suite.
It is designed to hold both Windows and Mac image-pack release tracks in one place.

## What this repo is for

- Hold platform-specific image-pack instructions
- Hold lightweight helper files such as reassembly scripts
- Publish the actual image pack as GitHub Release assets

## Repo layout

- `windows/` - current Windows image-pack instructions and helper scripts
- `mac/` - Mac image-pack instructions, helper scripts, and release templates

## Important GitHub size note

The main checkpoint parts are too large for normal git commits.
Do not try to commit these files into the repository history:

- `SSD-1B-modelspec.part1`
- `SSD-1B-modelspec.part2`
- `SSD-1B-modelspec.part3`

Instead, upload them to a GitHub Release for this repo.

## Recommended release structure

- Release: `v1.0.0-image-pack-windows`
- Release: `v1.0.0-image-pack-mac`

Keep Windows and Mac assets in separate releases so customers do not mix instructions or files.

## Current Windows release assets

- `windows/README-IMAGE-PACK-WINDOWS.txt`
- `windows/REASSEMBLE-CHECKPOINT.bat`
- `Skill-Soul-Private-AI-Suite-Image-Pack-Base.zip`
- `SSD-1B-modelspec.part1`
- `SSD-1B-modelspec.part2`
- `SSD-1B-modelspec.part3`

## Windows customer flow

1. Download every file from the Image Pack release.
2. Extract `Skill-Soul-Private-AI-Suite-Image-Pack-Base.zip`.
3. Move the `.part` files and `windows/REASSEMBLE-CHECKPOINT.bat` into the checkpoints folder from the extracted package.
4. Run `REASSEMBLE-CHECKPOINT.bat`.
5. Wait for the final checkpoint file to be rebuilt.

## Current platform scope

The current shipping image pack is Windows-oriented because the included instructions target `ComfyUI_windows_portable` and the helper script is a `.bat` file.

The Mac side of this repo now contains the starter install flow and expected folder layout, but it still needs real Mac backend binaries and model assets before it becomes a shippable release.

# Assemble Mac Image Pack

Use this guide on a real Mac to turn the current scaffold into a release-ready Mac image pack.

## Goal

Build a folder that can be shipped as the Mac image-pack payload and installed into:

- `~/.offline-ai-workstation/image-backend`

At the end, you should have a working bundle rooted at:

- `mac/image-backend-bin-mac/`

## What you need first

- an Apple Silicon Mac is strongly preferred
- Python 3 available on the Mac
- Git installed
- a working internet connection during assembly
- access to the image model you want to ship

## Recommended source inputs

- official ComfyUI manual install path:
  [https://docs.comfy.org/installation/manual_install](https://docs.comfy.org/installation/manual_install)
- current Mac bundle scaffold already in this repo:
  - `mac/image-backend-bin-mac/`
  - `mac/INSTALL-IMAGE-PACK-MAC.sh`
  - `mac/COMFYUI-MAC-BUNDLE-CHECKLIST.md`

## Step 1: Clone the image-pack repo on the Mac

```bash
git clone https://github.com/mjhouseonline-netizen/skill-soul-private-ai-suite-image-pack.git
cd skill-soul-private-ai-suite-image-pack/mac
```

## Step 2: Build a working ComfyUI manual install

Create a real ComfyUI install separately first.

Example shape:

```bash
mkdir -p ~/build-comfy
cd ~/build-comfy
git clone https://github.com/comfyanonymous/ComfyUI.git ComfyUI-mac
cd ComfyUI-mac
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

Notes:

- If you are following ComfyUI’s official Mac instructions with Conda instead of `venv`, that is also fine.
- What matters is ending up with a working `main.py` launch from inside the ComfyUI folder.

## Step 3: Verify ComfyUI runs locally

Inside your working ComfyUI folder:

```bash
source .venv/bin/activate
python main.py --listen 127.0.0.1 --port 7860
```

Verify in a browser:

- `http://127.0.0.1:7860`

Then stop it.

## Step 4: Add the image model checkpoint

Place your chosen checkpoint into:

```text
ComfyUI-mac/models/checkpoints/
```

For the current pack direction, the expected checkpoint example is:

- `SSD-1B-modelspec.safetensors`

## Step 5: Copy the working ComfyUI install into the repo scaffold

From the repo’s `mac/` folder:

1. delete the placeholder `image-backend-bin-mac/ComfyUI-mac/` contents if needed
2. copy the real working ComfyUI install into:

```text
mac/image-backend-bin-mac/ComfyUI-mac/
```

Keep these scaffold files at the bundle root:

- `image-backend-bin-mac/start-image-backend.sh`
- `image-backend-bin-mac/README.md`

## Step 6: Restore the repo’s launcher and workflow files if needed

After copying the real install, confirm these still exist:

- `image-backend-bin-mac/ComfyUI-mac/run.sh`
- `image-backend-bin-mac/ComfyUI-mac/workflows/text-to-image.json`
- `image-backend-bin-mac/ComfyUI-mac/workflows/premium-poster.json`

If the copied ComfyUI folder overwrote them, bring the repo versions back.

## Step 7: Make launchers executable

```bash
chmod +x image-backend-bin-mac/start-image-backend.sh
chmod +x image-backend-bin-mac/ComfyUI-mac/run.sh
```

## Step 8: Test the bundle in place

From the repo’s `mac/` folder:

```bash
./image-backend-bin-mac/start-image-backend.sh
```

Verify:

- the backend starts
- it binds on `127.0.0.1:7860`
- no immediate crash occurs

Then stop it.

## Step 9: Test the installer flow

From the repo’s `mac/` folder:

```bash
./INSTALL-IMAGE-PACK-MAC.sh
```

This should copy the bundle into:

- `~/.offline-ai-workstation/image-backend`

Then test again:

```bash
~/.offline-ai-workstation/image-backend/start-image-backend.sh
```

## Step 10: Test with the workstation app

On the Mac:

1. install or open the Mac workstation app
2. open Image Studio
3. let it detect or launch the local image backend
4. run a sample text-to-image prompt
5. confirm an image is saved successfully

## Step 11: Prepare release assets

Recommended release assets:

- `README-IMAGE-PACK-MAC.md`
- `INSTALL-IMAGE-PACK-MAC.sh`
- `image-backend-bin-mac.zip`

If the model payload is too large:

- split only the large archive
- document the split clearly in the Mac README
- keep Mac files separate from the Windows image-pack release

## Step 12: Publish to the image-pack repo

Use a separate release tag such as:

- `v1.0.0-image-pack-mac`

Upload the Mac assets to:

- `skill-soul-private-ai-suite-image-pack`

## Final check

Before publishing, confirm:

- the backend launches from shell scripts only
- at least one checkpoint is present
- ComfyUI API responds on port `7860`
- the workstation app can generate an image
- release assets are labeled clearly as Mac-only

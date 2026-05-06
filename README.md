# Houdini Asset Gen via Hugging Face Space API Endpoints
A simple proof-of-concept utilizing [Gradio Python client API](https://huggingface.co/docs/hub/spaces-api-endpoints) to incorporate GenAI models on [Hugging Face Spaces](https://huggingface.co/spaces) into 3-D content-creation workflows as Houdini Digital Assets (HDAs).

<video src="https://github.com/user-attachments/assets/a7870eda-132a-488a-ba12-38f3e2348a76" controls autoplay loop muted style="max-width: 100%;">
  Your browser does not support the video tag.
</video>

> Example 3-D asset generated using text prompt `a humanoid robot, anime style, full-body shot full figure portrait`

## Prerequisite

* [Houdini Apprentice (non-commercial)](https://www.sidefx.com/products/houdini-apprentice/)
* Optional: Hugging Face PRO for higher daily ZeroGPU quota

## Installation

1. Open a Houdini Shell/Terminal; navigate to a desired location `/PATH/TO/INSTALL` to clone the repo and install/upgrade the Hython dependencies: 
    ```shell
    cd /PATH/TO/INSTALL
    git clone https://github.com/jerenchen/houdini-diffusion-asset-gen.git
    cd houdini-diffusion-asset-gen
    ./install_dep.sh
    ```
2. Install HDAs by adding a Houdini package JSON in the Houdini preferences directory, e.g. on MacOS: `~/Library/Preferences/houdini/X.Y/packages/diffusion-asset-gen.json`, with content below:
    ```json
    {
        "env": [
            {
                "HOUDINI_PATH": "/PATH/TO/INSTALL/houdini-diffusion-asset-gen"
            }
        ]
    }
    ```
    where `X.Y` is your Houdini version and `/PATH/TO/INSTALL/houdini-diffusion-asset-gen` is the location to the cloned repo.
3. Set the [user access token](https://huggingface.co/settings/tokens) as environment variable `HF_TOKEN` for Hugging Face membership features such as daily `ZeroGPU` quota: `export HF_TOKEN=hf_...`
   > Insufficient compute quota will result asset gen to fail due to timeout errors

## Asset-Gen Diffusion Models/Spaces
Here is the list of asset-gen HDAs and their incorporated Hugging Face spaces:
| HDAs <img width="155" height="1"> | ZeroGPU Space &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img width="35" height="1"> |
|:---:|:--------:|
| [TextToImageGen](otls/object_diffgen.text2image.1.0.hdanc) | [`FLUX.1-[dev]`](https://huggingface.co/spaces/black-forest-labs/FLUX.1-dev) |
| [ImageToMeshGen](otls/object_diffgen.image2mesh.1.0.hdanc) | [`TRELLIS`](https://huggingface.co/spaces/trellis-community/TRELLIS) |
| [DiffusionAssetGen](otls/object_diffgen.diffusionassetgen.1.0.hdanc) | Combined Workflow |

| HDAs <img width="155" height="1"> | Non-ZeroGPU Space <img width="35" height="1"> |
|:---:|:---:|
| [TextToImageGenLite](otls/object_diffgen.text2imagelite.1.0.hdanc) | [SDXL Turbo](https://huggingface.co/spaces/diffusers/unofficial-SDXL-Turbo-i2i-t2i) |
| [ImageToMeshGenLite](otls/object_diffgen.image2meshlite.1.0.hdanc) | [TripoSR](https://huggingface.co/spaces/AleenDG/3DGenTripoSR) |
| [DiffusionAssetGenLite](otls/object_diffgen.diffusionassetgenlite.1.0.hdanc) | Combined Workflow |

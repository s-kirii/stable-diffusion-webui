#!/bin/bash
####################################################################
#                          macOS defaults                          #
# Please modify webui-user.sh to change these instead of this file #
####################################################################

if [[ -x "$(command -v python3.10)" ]]
then
    python_cmd="python3.10"
fi

export install_dir="$HOME"
#export COMMANDLINE_ARGS="--skip-torch-cuda-test --upcast-sampling --no-half-vae --use-cpu interrogate"
export COMMANDLINE_ARGS="--skip-torch-cuda-test --upcast-sampling --no-half-vae --no-half --use-cpu interrogate" #https://nikkie-ftnext.hatenablog.com/entry/setup-stable-diffusion-web-ui-counterfeit-2-5#RuntimeError-upsample_nearest2d_channels_last-not-implemented-for-Half-%E3%81%AE%E8%A7%A3%E6%B6%88
export TORCH_COMMAND="pip install torch==2.0.1 torchvision==0.15.2"
export PYTORCH_ENABLE_MPS_FALLBACK=1

####################################################################

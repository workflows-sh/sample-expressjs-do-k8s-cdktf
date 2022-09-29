# sample-expressjs-do-k8s-cdktf

## Summary
This repository will build and publish a docker image to the Digital Ocean Container Registry created by the do-k8s-cdktf stack. This can then be consumed by CTO.ai Services (Container Previews) or deployed into the do-k8s-cdktf Kubernetes cluster.

## How it works
The end result of this sample application is an HTML webpage that is dynamically updated based on the RELEASE_NO provided in `index.js`. Edit that variable to see your resulting website.

# Getting Started
You can build and push this repo directly to a container registry of your choosing using docker commands, however the repo is setup to use the Ops CLI (CTO.ai) to abstract this process for you.

Run `ops run -b .` in the directory and run the pipeline. This requires a `REF` variable to be defined. This automatically gets populated when you run this with an event trigger from the repo, but if you run it locally, be sure to provide this variable value prior to running.

The primary way to use this repo is to edit the `index.js` file directly, commit to a branch name matching the RELEASE_NO you choose and create a PR back to main. This will generate all necessary values and on the PR open it will build and push the image. Finally, the CTO.ai Services linked to the `workflows` team will be updated to the latest version.

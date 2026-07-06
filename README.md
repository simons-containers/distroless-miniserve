[![Current Version](https://raw.githubusercontent.com/simons-containers/distroless-miniserve/badges/.badges/main/release.svg)](https://github.com/simons-containers/distroless-miniserve/pkgs/container/distroless-miniserve) [![Tags](https://raw.githubusercontent.com/simons-containers/distroless-miniserve/badges/.badges/main/tags.svg)](https://github.com/simons-containers/distroless-miniserve/pkgs/container/distroless-miniserve) <br> ![Current Size](https://raw.githubusercontent.com/simons-containers/distroless-miniserve/badges/.badges/main/size.svg) ![Wasted Size](https://raw.githubusercontent.com/simons-containers/distroless-miniserve/badges/.badges/main/wasted.svg) ![Efficiency](https://raw.githubusercontent.com/simons-containers/distroless-miniserve/badges/.badges/main/efficiency.svg) <br> ![Critical](https://raw.githubusercontent.com/simons-containers/distroless-miniserve/badges/.badges/main/critical.svg) ![High](https://raw.githubusercontent.com/simons-containers/distroless-miniserve/badges/.badges/main/high.svg) ![Medium](https://raw.githubusercontent.com/simons-containers/distroless-miniserve/badges/.badges/main/medium.svg) ![Low](https://raw.githubusercontent.com/simons-containers/distroless-miniserve/badges/.badges/main/low.svg) <br> [![Publish Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-miniserve/deploy.yaml?label=Publish%20Workflow&logo=github)](https://github.com/simons-containers/distroless-miniserve/actions/workflows/deploy.yaml) [![Update Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-miniserve/update-versions.yaml?label=Update%20Workflow&logo=github)](https://github.com/simons-containers/distroless-miniserve/actions/workflows/update-versions.yaml)

# Distroless Miniserve container

Bare-bones distroless Miniserve container image from `scratch`.

## Running

Use args or environment variables for configuration, mount data at `/srv/http`

Example:

```bash
docker run -it --rm -v ./html:/srv/http \
  ghcr.io/simons-containers/distroless-miniserve:latest
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **Miniserve**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **Miniserve** - For when you really just want to serve some files over HTTP right now!  
  https://github.com/svenstaro/miniserve

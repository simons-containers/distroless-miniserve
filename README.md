# Distroless Miniserve container

Bare-bones distroless Miniserve container image from `scratch`.

## Running

Use args or environment variables for configuration, mount data at `/srv/http`

Example:

```bash
docker run -it --rm -v ./html:/srv/http \
  ghcr.io/simons-containers/distroless-miniserve:latest
```

## Building

| Arg | Description |
|---|---|
| `MINISERVE_VERSION` | Version of Miniserve to use

Build container using build-args from versions.yaml:

```bash
docker build -t \
  distroless-glibc:$(yq -r .miniserve versions.yaml) \
  $(yq -r 'to_entries | .[] | "--build-arg \(.key | ascii_upcase)_VERSION=\(.value)"' versions.yaml) -f Containerfile .
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **Miniserve**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **Miniserve** - For when you really just want to serve some files over HTTP right now!  
  https://github.com/svenstaro/miniserve
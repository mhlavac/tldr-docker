# TLDR docker container
This is a docker container for easy use of TLDR.

You can use TLDR in single command `docker run -it --rm mhlavac/tldr-docker tldr tar`

Or make an alias `alias tldr="docker run -it --rm mhlavac/tldr-docker tldr"` and then use `tldr tar` instead

## Licence

MIT

## Contributing

Any contributions are welcome

## Building & Development

The easiest way how to develop is to `git clone` and build docker container locally

```
docker build -t mhlavac/tldr-docker .
```

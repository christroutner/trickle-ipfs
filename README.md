# trickle-ipfs

This is a Docker container that wraps go-ipfs/kubo in the [Trickle](https://wiki.archlinux.org/title/trickle) Linux command line app, so that bandwidth consumption can be controlled by the adminstrator.

A quick search for 'bandwidth ipfs' will reveal a lot of frustrated stories of people wanting to use go-ipfs but not being able to control the amount of bandwidth that it uses. This Docker container solves that problem. Bandwidth shaping is controlled by Trickle, which wraps the go-ipfs binary.

This Docker image is expected to be used with Docker Compose to configure it. Study the [docker-compose.yml](./docker-compose.yml) file to learn how to set up the container for your own usage. Envrionment variables are used to pass startup arguments to the IPFS daemon, and also to configure the bandwidth rate limits.

## License

[MIT](LICENSE.md)

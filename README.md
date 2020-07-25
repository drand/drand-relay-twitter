# drand-relay-twitter

A drand relay that tweets randomness beacons to Twitter.

## Usage

```sh
drand-relay-twitter run [arguments...]
```

Note: at minimum you'll need to specify a HTTP, gRPC or libp2p pubsub drand endpoint to relay from.

**Example**

```sh
drand-relay-twitter run --hash 8990e7a9aaed2ffed73dbd7092123d6f289930540d7651336225dc172e51b2ce --url http://api.drand.sh --url http://api2.drand.sh --url http://api3.drand.sh --url https://drand.cloudflare.com
```

## Prerequesites

### Credentials

Ensure Twitter credentials file is in `~/.twitter/CREDENTIALS` - it should look like:

```
<Twitter API key>
<Twitter API secret>
<Twitter access token>
<Twitter access token secret>
```

## Contribute

Feel free to dive in! [Open an issue](https://github.com/drand/drand-relay-twitter/issues/new) or submit PRs.

## License

This project is dual-licensed under Apache 2.0 and MIT terms:

- Apache License, Version 2.0, ([LICENSE-APACHE](https://github.com/drand/drand-relay-twitter/blob/master/LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
- MIT license ([LICENSE-MIT](https://github.com/drand/drand-relay-twitter/blob/master/LICENSE-MIT) or http://opensource.org/licenses/MIT)

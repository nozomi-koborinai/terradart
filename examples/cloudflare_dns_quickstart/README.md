# Cloudflare DNS quickstart

The smallest `terradart_cloudflare` example: a Cloudflare zone and a proxied CNAME record that points `api.<your domain>` at a backend running elsewhere (Cloud Run, Firebase Hosting, ...).

- `CloudflareZone` holds the domain in a Cloudflare account.
- `CloudflareDnsRecord` adds the `api` CNAME to `ghs.googlehosted.com` with `proxied: true`, so traffic goes through Cloudflare.

## Before you apply

The stack uses demo literals. Apply needs a domain you own and the Cloudflare account that will hold it: replace `terradart-demo.example` and `terradart-demo-account` in `lib/main.dart`, and point the CNAME `content` at your own backend host. Creating the zone does not move the domain; Cloudflare serves it only after you set the registrar's nameservers to the ones the zone is assigned.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A Cloudflare API token that can edit zones and DNS, in `CLOUDFLARE_API_TOKEN`; none is needed for synth

## Usage

```bash
dart pub get
terradart synth          # writes tf-out/main.tf.json, no credentials needed
export CLOUDFLARE_API_TOKEN=...
terradart plan
terradart apply
```

No token appears in `tf-out/main.tf.json`: `CloudflareProvider` has no token parameter, and the provider reads `CLOUDFLARE_API_TOKEN` at plan and apply time.

## Next steps

- See [Cloudflare on terradart.dev](https://terradart.dev/docs/providers/cloudflare/) for the provider package.
- See [`cloudflare_leftover_quickstart`](../cloudflare_leftover_quickstart/) for every other Cloudflare factory (synth and `terraform validate` only).

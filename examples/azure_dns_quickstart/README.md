# Azure DNS quickstart

One stack registers `AzureProvider` and `CloudflareProvider`. It creates a resource group, a public IP, a Cloudflare zone, and an A record whose content is that IP's address.

Demo literals. Synth and `terraform validate` only. **Never apply.**

## Before you apply

The domain, the Cloudflare account id, and the Azure names are placeholders. A public IP also has an hourly charge. **Never apply.**

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/), installed with `dart pub global activate terradart_cli`. Synth needs no Azure or Cloudflare credentials.

## Usage

```bash
dart pub get
terradart synth
```

Synth writes no Azure client secret and no Cloudflare token. Those values stay in the `ARM_*` and `CLOUDFLARE_*` environment variables.

## Next steps

- [`cloudflare_dns_quickstart`](../cloudflare_dns_quickstart/) is a Cloudflare zone and CNAME a reader can apply after replacing the demo domain.
- [`azure_leftover_quickstart`](../azure_leftover_quickstart/) covers every other Azure factory. Synth and `terraform validate` only.
- See [Cloudflare on terradart.dev](https://terradart.dev/docs/providers/cloudflare/) for the Cloudflare package.

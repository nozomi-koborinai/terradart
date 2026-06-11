---
title: Waves 23–24 (v0.12.10)
description: Ten curated google_* factories shipped in Waves 23–24 with example stack pointers.
---

**v0.12.10** added ten curated resource factories across DNS, Eventarc, Cloud Run, IAP, Compute, and BigQuery. All are **additive** — no breaking changes for code that does not import these types.

Catalog after `0.12.10`: **186 curated resource factories + 1 data source** (187 catalog entries). See [status](/docs/status/) for versioning policy.

If you are upgrading from `0.12.9`, read [Migrating](/docs/migrating/) first — the same release also enum-ized many **existing** factories.

## Wave 23

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_dns_record_set` | `GoogleDnsRecordSet` | `dns` | [dns_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dns_quickstart) |
| `google_dns_policy` | `GoogleDnsPolicy` | `dns` | [dns_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dns_quickstart) |
| `google_eventarc_google_channel_config` | `GoogleEventarcGoogleChannelConfig` | `eventarc` | [eventarc_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/eventarc_quickstart) |
| `google_cloud_run_v2_worker_pool` | `GoogleCloudRunV2WorkerPool` | `cloud_run` | [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) |
| `google_iap_web_backend_service_iam_member` | `GoogleIapWebBackendServiceIamMember` | `iap` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |

### Wave 23 highlights

- **DNS** — `GoogleDnsRecordSet` supports routing-policy helpers and typed record enums; `GoogleDnsPolicy` covers inbound forwarding and DNSSEC-related project policy.
- **Eventarc** — `GoogleEventarcGoogleChannelConfig` configures the Google-owned channel used by Eventarc triggers.
- **Cloud Run** — `GoogleCloudRunV2WorkerPool` is the long-running worker pool resource (distinct from Services and Jobs).
- **IAP** — `GoogleIapWebBackendServiceIamMember` grants Identity-Aware Proxy access on an HTTPS load-balancer backend.

## Wave 24

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_dns_response_policy` | `GoogleDnsResponsePolicy` | `dns` | [dns_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dns_quickstart) |
| `google_dns_response_policy_rule` | `GoogleDnsResponsePolicyRule` | `dns` | [dns_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dns_quickstart) |
| `google_cloud_run_v2_worker_pool_iam_member` | `GoogleCloudRunV2WorkerPoolIamMember` | `cloud_run` | [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) |
| `google_compute_router` | `GoogleComputeRouter` | `compute` | [compute_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_quickstart) |
| `google_bigquery_datapolicy_data_policy_iam_member` | `GoogleBigqueryDatapolicyDataPolicyIamMember` | `bigquery` | [bigquery_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/bigquery_quickstart) |

### Wave 24 highlights

- **DNS** — response policies and rules for private or hybrid DNS override scenarios (paired with managed zones from earlier waves).
- **Cloud Run** — IAM member adjunct for worker pools (`roles/run.invoker` pattern).
- **Compute** — `GoogleComputeRouter` with typed `ComputeRouterBgp` / `ComputeRouterBgpAdvertiseMode` for Cloud Router BGP sessions.
- **BigQuery** — IAM member on data policies (column-level policy enforcement).

## Example coverage

These quickstarts were extended in the `0.12.10` release to synth every new factory:

- [dns_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dns_quickstart) — policy, record set, response policy + rule
- [eventarc_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/eventarc_quickstart) — channel config
- [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) — worker pool + IAM
- [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) — IAP member
- [compute_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_quickstart) — Cloud Router
- [bigquery_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/bigquery_quickstart) — datapolicy IAM member

CI runs `terraform validate` on each quickstart's synth output — see [Status — Examples matrix](/docs/status/#beta-readiness-checklist).

## Using factories in a Stack

Import from the service barrel (not `terradart_google.dart` re-exports alone — barrel imports keep analyzer scope smaller):

```dart
import 'package:terradart_google/dns.dart';
import 'package:terradart_google/compute.dart';

final router = GoogleComputeRouter(
  localName: 'edge',
  name: TfArg.literal('edge-router'),
  network: TfArg.ref(vpc.selfLink),
  bgp: ComputeRouterBgp(asn: TfArg.literal(64514)),
);
```

Agents can look up constructor shapes via [terradart-mcp](/docs/agent/) (`get_resource_schema`, `list_resources`).

## Next steps

- [Migrating](/docs/migrating/) — enum / nested-helper breaking changes in `0.12.10`
- [Getting Started](/docs/getting-started/) — first Stack if you are new to TerraDart
- [CHANGELOG](https://github.com/nozomi-koborinai/terradart/blob/main/CHANGELOG.md) — full release notes

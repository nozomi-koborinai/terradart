---
title: Waves 23–26
description: Curated google_* factories shipped in Waves 23–26 (v0.12.10–0.12.11) with example stack pointers.
---

## v0.12.10 — Waves 23–24

**v0.12.10** added ten curated resource factories across DNS, Eventarc, Cloud Run, IAP, Compute, and BigQuery. All are **additive** — no breaking changes for code that does not import these types.

Catalog after `0.12.10`: **186 curated resource factories + 1 data source** (187 catalog entries). See [status](/docs/status/) for versioning policy.

If you are upgrading from `0.12.9`, read [Migrating](/docs/migrating/) first — the same release also enum-ized many **existing** factories.

### Wave 23

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_dns_record_set` | `GoogleDnsRecordSet` | `dns` | [dns_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dns_quickstart) |
| `google_dns_policy` | `GoogleDnsPolicy` | `dns` | [dns_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dns_quickstart) |
| `google_eventarc_google_channel_config` | `GoogleEventarcGoogleChannelConfig` | `eventarc` | [eventarc_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/eventarc_quickstart) |
| `google_cloud_run_v2_worker_pool` | `GoogleCloudRunV2WorkerPool` | `cloud_run` | [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) |
| `google_iap_web_backend_service_iam_member` | `GoogleIapWebBackendServiceIamMember` | `iap` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |

**Highlights**

- **DNS** — `GoogleDnsRecordSet` supports routing-policy helpers and typed record enums; `GoogleDnsPolicy` covers inbound forwarding and DNSSEC-related project policy.
- **Eventarc** — `GoogleEventarcGoogleChannelConfig` configures the Google-owned channel used by Eventarc triggers.
- **Cloud Run** — `GoogleCloudRunV2WorkerPool` is the long-running worker pool resource (distinct from Services and Jobs).
- **IAP** — `GoogleIapWebBackendServiceIamMember` grants Identity-Aware Proxy access on an HTTPS load-balancer backend.

### Wave 24

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_dns_response_policy` | `GoogleDnsResponsePolicy` | `dns` | [dns_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dns_quickstart) |
| `google_dns_response_policy_rule` | `GoogleDnsResponsePolicyRule` | `dns` | [dns_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dns_quickstart) |
| `google_cloud_run_v2_worker_pool_iam_member` | `GoogleCloudRunV2WorkerPoolIamMember` | `cloud_run` | [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) |
| `google_compute_router` | `GoogleComputeRouter` | `compute` | [compute_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_quickstart) |
| `google_bigquery_datapolicy_data_policy_iam_member` | `GoogleBigqueryDatapolicyDataPolicyIamMember` | `bigquery` | [bigquery_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/bigquery_quickstart) |

**Highlights**

- **DNS** — response policies and rules for private or hybrid DNS override scenarios (paired with managed zones from earlier waves).
- **Cloud Run** — IAM member adjunct for worker pools (`roles/run.invoker` pattern).
- **Compute** — `GoogleComputeRouter` with typed `ComputeRouterBgp` / `ComputeRouterBgpAdvertiseMode` for Cloud Router BGP sessions.
- **BigQuery** — IAM member on data policies (column-level policy enforcement).

## v0.12.11 — Waves 25–26

**v0.12.11** adds five more curated factories (Serverless VPC Access + Certificate Manager). All are **additive** — no breaking changes vs `0.12.10`.

Catalog after `0.12.11`: **191 curated resource factories + 1 data source** (192 catalog entries).

### Wave 25 — Serverless VPC Access

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_vpc_access_connector` | `GoogleVpcAccessConnector` | `service_networking` | [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) |

**Highlights**

- **VPC Access** — `GoogleVpcAccessConnector` is the managed proxy that lets Cloud Run, Cloud Functions, and App Engine reach private VPC resources (Cloud SQL private IP, Memorystore, etc.).
- **Placement** — dedicated `/28` CIDR (`ipCidrRange` + `network`) or an existing subnet via `VpcAccessConnectorSubnet`.
- **Downstream** — wire `template.vpcAccess.connector` on `GoogleCloudRunV2Service` with `CloudRunV2ServiceVpcAccess`.

```dart
import 'package:terradart_google/service_networking.dart';
import 'package:terradart_google/cloud_run.dart';

final connector = GoogleVpcAccessConnector(
  localName: 'run_vpc',
  name: TfArg.literal('run-vpc'),
  region: TfArg.literal('asia-northeast1'),
  ipCidrRange: TfArg.literal('10.8.0.0/28'),
  network: TfArg.literal('default'),
);

// On the Cloud Run service template:
template: CloudRunV2ServiceTemplate(
  vpcAccess: CloudRunV2ServiceVpcAccess(
    connector: TfArg.ref(connector.selfLink),
    egress: CloudRunV2ServiceVpcAccessEgress.allTraffic,
  ),
),
```

### Wave 26 — Certificate Manager

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_certificate_manager_dns_authorization` | `GoogleCertificateManagerDnsAuthorization` | `certificate_manager` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |
| `google_certificate_manager_certificate` | `GoogleCertificateManagerCertificate` | `certificate_manager` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |
| `google_certificate_manager_certificate_map` | `GoogleCertificateManagerCertificateMap` | `certificate_manager` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |
| `google_certificate_manager_certificate_map_entry` | `GoogleCertificateManagerCertificateMapEntry` | `certificate_manager` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |

**Highlights**

- **DNS authorization** — proves domain ownership for Google-managed certificate provisioning (`CertificateManagerDnsAuthorizationType` enum).
- **Certificate** — sealed `CertificateManagerCertificateProvisioningSource`: managed (auto-renewed) or self-managed PEM upload; `CertificateManagerCertificateScope` for scope selection.
- **Certificate map** — hostname → certificate routing table for global external HTTPS load balancers; set `certificateMap` on `GoogleComputeTargetHttpsProxy` to migrate off classic `google_compute_managed_ssl_certificate`.
- **Map entry** — binds hostnames (or matchers) to one or more certificates inside a map.

```dart
import 'package:terradart_google/certificate_manager.dart';

final dnsAuth = GoogleCertificateManagerDnsAuthorization(
  localName: 'app_dns',
  name: TfArg.literal('app-dns-auth'),
  domain: TfArg.literal('app.example.com'),
);

final cert = GoogleCertificateManagerCertificate(
  localName: 'app_cert',
  name: TfArg.literal('app-cert'),
  provisioning: CertificateManagerCertificateManagedProvisioning(
    domains: ['app.example.com'],
    dnsAuthorizations: [TfArg.ref(dnsAuth.id)],
  ),
);
```

Intentionally **not** curated in Wave 26: `google_certificate_manager_trust_config`, `google_certificate_manager_certificate_issuance_config`.

## Example coverage

Quickstarts extended for these waves:

| Release | Quickstart | New factories |
| --- | --- | --- |
| `0.12.10` | [dns_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dns_quickstart) | policy, record set, response policy + rule |
| `0.12.10` | [eventarc_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/eventarc_quickstart) | channel config |
| `0.12.10` | [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) | worker pool + IAM |
| `0.12.10` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) | IAP member |
| `0.12.10` | [compute_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_quickstart) | Cloud Router |
| `0.12.10` | [bigquery_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/bigquery_quickstart) | datapolicy IAM member |
| `0.12.11` | [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) | VPC Access connector + `template.vpcAccess` |
| `0.12.11` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) | Certificate Manager chain (parallel to Compute SSL cert) |

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

---
title: Waves 23–29
description: Curated google_* factories shipped in Waves 23–29 (v0.12.10–0.12.15) with example stack pointers.
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

## v0.12.12 — `exactly_one_of` sealed enforcement

**v0.12.12** is a **breaking** release for seven existing factories (firewall, health checks, uptime check, BigQuery job/connection, Cloud Build trigger). No new catalog entries — compile-time sealed virtual slots replace optional per-block params. See [Migrating](/docs/migrating/) (`0.12.11 → 0.12.12`).

## v0.12.13 — Wave 27

**v0.12.13** adds two Certificate Manager factories and backfills the `GoogleProject` data source in `pubsub_quickstart`. **Additive** — no breaking changes vs `0.12.12`.

Catalog after `0.12.13`: **193 curated resource factories + 1 data source** (194 catalog entries).

### Wave 27 — Certificate Manager (trust + issuance)

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_certificate_manager_trust_config` | `GoogleCertificateManagerTrustConfig` | `certificate_manager` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |
| `google_certificate_manager_certificate_issuance_config` | `GoogleCertificateManagerCertificateIssuanceConfig` | `certificate_manager` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |

**Highlights**

- **Trust config** — PEM trust anchors / intermediate CAs and optional allowlists for mTLS and custom trust stores on HTTPS proxies.
- **Issuance config** — binds managed certificate provisioning to a Certificate Authority Service `ca_pool` with lifetime and rotation policy.

```dart
import 'package:terradart_google/certificate_manager.dart';

final trust = GoogleCertificateManagerTrustConfig(
  localName: 'app_trust',
  name: TfArg.literal('app-trust'),
  location: TfArg.literal('global'),
  trustStores: [
    CertificateManagerTrustConfigTrustStore(
      trustAnchors: [
        CertificateManagerTrustConfigTrustAnchor(
          pemCertificate: TfArg.variable('cm_trust_anchor_pem'),
        ),
      ],
    ),
  ],
);
```

## v0.12.14 — Wave 28

**v0.12.14** adds the CAS CA pool factory and wires it into the Certificate Manager issuance path in `compute_lb_quickstart`. **Additive** — no breaking changes vs `0.12.13`.

Catalog after `0.12.14`: **194 curated resource factories + 1 data source** (195 catalog entries). 30 service barrels.

### Wave 28 — Private CA (CAS pool)

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_privateca_ca_pool` | `GooglePrivatecaCaPool` | `privateca` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |

**Highlights**

- **CA pool** — Certificate Authority Service container referenced by [GoogleCertificateManagerCertificateIssuanceConfig] via `caPool: TfArg.ref(pool.id)`.
- **`PrivatecaCaPoolTier`** — `ENTERPRISE` or `DEVOPS`.

```dart
import 'package:terradart_google/privateca.dart';

final pool = GooglePrivatecaCaPool(
  localName: 'app_pool',
  name: TfArg.literal('app-pool'),
  location: TfArg.literal('us-central1'),
  tier: TfArg.literal(PrivatecaCaPoolTier.devops),
);
```

## v0.12.15 — Wave 29

**v0.12.15** adds the CAS certificate authority factory and wires a self-signed root CA into `compute_lb_quickstart` before the issuance config. **Additive** — no breaking changes vs `0.12.14`.

Catalog after `0.12.15`: **195 curated resource factories + 1 data source** (196 catalog entries). 30 service barrels.

### Wave 29 — Private CA (certificate authority)

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_privateca_certificate_authority` | `GooglePrivatecaCertificateAuthority` | `privateca` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |

**Highlights**

- **Root CA** — `PrivatecaCertificateAuthorityConfig` + `PrivatecaCertificateAuthorityX509Config.rootCa()` for a cert-signing profile inside a [GooglePrivatecaCaPool].
- **Key spec** — `PrivatecaCertificateAuthorityKeySpec` with `PrivatecaCertificateAuthorityKeyAlgorithm` enum.

```dart
GooglePrivatecaCertificateAuthority(
  localName: 'root_ca',
  certificateAuthorityId: TfArg.literal('app-root-ca'),
  pool: TfArg.ref(pool.id),
  location: TfArg.literal('us-central1'),
  config: PrivatecaCertificateAuthorityConfig(
    subjectConfig: PrivatecaCertificateAuthoritySubjectConfig(
      subject: PrivatecaCertificateAuthoritySubject(
        commonName: TfArg.literal('app.example.com'),
      ),
    ),
    x509Config: PrivatecaCertificateAuthorityX509Config.rootCa(),
  ),
  keySpec: PrivatecaCertificateAuthorityKeySpec(
    algorithm: TfArg.literal(
      PrivatecaCertificateAuthorityKeyAlgorithm.rsaPkcs14096Sha256,
    ),
  ),
);
```

## v0.12.16 — Wave 30

**v0.12.16** adds the CAS issued-certificate factory and exercises CSR-based issuance in `compute_lb_quickstart` after the root CA. **Additive** — no breaking changes vs `0.12.15`.

Catalog after `0.12.16`: **196 curated resource factories + 1 data source** (197 catalog entries). 30 service barrels.

### Wave 30 — Private CA (certificate)

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_privateca_certificate` | `GooglePrivatecaCertificate` | `privateca` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |

**Highlights**

- **CSR or inline config** — issue via `pem_csr` or typed [PrivatecaCertificateConfig] (subject + optional `public_key`).
- **Leaf profile** — `PrivatecaCertificateX509Config.serverTls()` for server-auth end-entity certs.
- **Apply note** — parent CA pool must be **ENTERPRISE** tier at apply time (provider constraint); the quickstart uses a CSR variable for `terraform validate`.

```dart
GooglePrivatecaCertificate(
  localName: 'leaf_cert',
  name: TfArg.literal('app-leaf-cert'),
  pool: TfArg.ref(pool.id),
  location: TfArg.literal('us-central1'),
  certificateAuthority: TfArg.literal('app-root-ca'),
  lifetime: TfArg.literal('86400s'),
  pemCsr: TfArg.variable('leaf_cert_csr_pem'),
);
```


## v0.12.20 — Wave 33

**v0.12.20** adds AlloyDB cluster, instance, and user factories on a new `alloydb` barrel. **Additive** — no breaking changes vs `0.12.19`.

Catalog after `0.12.20`: **202 curated resource factories + 1 data source** (203 catalog entries). 32 service barrels.

### Wave 33 — AlloyDB

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_alloydb_cluster` | `GoogleAlloydbCluster` | `alloydb` | [cloud_sql_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_sql_quickstart) |
| `google_alloydb_instance` | `GoogleAlloydbInstance` | `alloydb` | [cloud_sql_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_sql_quickstart) |
| `google_alloydb_user` | `GoogleAlloydbUser` | `alloydb` | [cloud_sql_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_sql_quickstart) |

**Highlights**

- **PSA reuse** — [AlloydbClusterNetworkConfig] pins the same VPC + allocated range as private Cloud SQL.
- **Typed helpers** — `AlloydbInstanceMachineConfig`, `AlloydbClusterInitialUser`, day-of-week enums for backup/maintenance windows.

```dart
GoogleAlloydbCluster(
  localName: 'alloydb',
  clusterId: TfArg.literal('app-alloydb'),
  location: TfArg.literal('asia-northeast1'),
  networkConfig: AlloydbClusterNetworkConfig(
    network: TfArg.ref(vpc.selfLink),
    allocatedIpRange: TfArg.ref(psaRange.nameRef),
  ),
  dependsOn: [ResourceDependency(psaConnection)],
);
```

## Wave 35 — AlloyDB backup, Memcache, Spanner (unreleased)

Adds `google_alloydb_backup`, `google_memcache_instance`, `google_spanner_instance`, and `google_spanner_database`.

Catalog after Wave 35: **206 curated resource factories + 1 data source** (207 catalog entries). 34 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_alloydb_backup` | `GoogleAlloydbBackup` | `alloydb` | [cloud_sql_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_sql_quickstart) |
| `google_memcache_instance` | `GoogleMemcacheInstance` | `memcache` | [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) |
| `google_spanner_instance` | `GoogleSpannerInstance` | `spanner` | [ops_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/ops_quickstart) |
| `google_spanner_database` | `GoogleSpannerDatabase` | `spanner` | [ops_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/ops_quickstart) |

## Wave 34 — Cloud Filestore (unreleased)

Adds managed NFS (`google_filestore_instance`) plus backup and snapshot adjuncts on a new `filestore` barrel. Extends [compute_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_quickstart).

Catalog after Wave 34 (stacked on Wave 35): **236 curated resource factories + 1 data source** (237 catalog entries). 45 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_filestore_instance` | `GoogleFilestoreInstance` | `filestore` | [compute_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_quickstart) |
| `google_filestore_backup` | `GoogleFilestoreBackup` | `filestore` | [compute_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_quickstart) |
| `google_filestore_snapshot` | `GoogleFilestoreSnapshot` | `filestore` | [compute_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_quickstart) |

## v0.12.19 — Wave 32

**v0.12.19** adds `TimeProvider` / `TimeSleep` (`hashicorp/time`), `ApisEnablement` propagation helper, and Memorystore Redis. **Additive** — no breaking changes vs `0.12.18`.

Catalog after `0.12.19`: **199 curated resource factories + 1 data source** (200 catalog entries). 31 service barrels.

### Wave 32 — Memorystore Redis + API propagation

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `time_sleep` | `TimeSleep` | `terradart_core` | [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) |
| `google_redis_instance` | `GoogleRedisInstance` | `redis` | [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) |

**Highlights**

- **`Apis.enable`** — registers `Apis.required` services + a `TimeSleep` propagation wait in one call (60s default; renamed from `ApisEnablement.enable` post-`0.12.20`).
- **Redis** — `RedisInstanceTier` (`basic` / `standardHa`), `RedisInstanceConnectMode` for VPC access patterns.
- **`cloud_run_quickstart`** — Redis cache on the default VPC alongside the existing VPC Access connector.

```dart
// Requires `const TimeProvider()` in Stack.providers
// (package:terradart_google/time.dart).
final apiDeps = Apis.enable(
  this,
  barrels: [Barrels.cloudRun, Barrels.serviceNetworking, Barrels.redis],
  propagationDelay: const Duration(seconds: 60),
);

add(
  GoogleRedisInstance(
    localName: 'api_cache',
    name: TfArg.literal('api-cache'),
    memorySizeGb: TfArg.literal(1),
    region: TfArg.literal('asia-northeast1'),
    tier: TfArg.literal(RedisInstanceTier.basic),
    authorizedNetwork: TfArg.literal('default'),
    dependsOn: apiDeps,
  ),
);
```

## v0.12.18 — Wave 31

**v0.12.18** adds CAS certificate template + pool IAM member factories and upgrades `compute_lb_quickstart` to an **ENTERPRISE** CAS pool (required for leaf cert apply). **Additive** — no breaking changes vs `0.12.17`.

Catalog after `0.12.18`: **198 curated resource factories + 1 data source** (199 catalog entries). 30 service barrels.

### Wave 31 — Private CA (template + pool IAM)

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_privateca_certificate_template` | `GooglePrivatecaCertificateTemplate` | `privateca` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |
| `google_privateca_ca_pool_iam_member` | `GooglePrivatecaCaPoolIamMember` | `privateca` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) |

**Highlights**

- **Template** — `PrivatecaCertificateTemplateIdentityConstraints` + `PrivatecaCertificateTemplateCelExpression` for reusable issuance profiles.
- **Pool IAM** — additive `roles/privateca.auditor` (or similar) on [GooglePrivatecaCaPool].
- **ENTERPRISE pool** — `PrivatecaCaPoolTier.enterprise` so [GooglePrivatecaCertificate] can apply against the pool.

```dart
GooglePrivatecaCertificateTemplate(
  localName: 'leaf_template',
  name: TfArg.literal('app-template'),
  location: TfArg.literal('us-central1'),
  identityConstraints: PrivatecaCertificateTemplateIdentityConstraints(
    allowSubjectAltNamesPassthrough: TfArg.literal(true),
    allowSubjectPassthrough: TfArg.literal(true),
    celExpression: PrivatecaCertificateTemplateCelExpression(
      expression: TfArg.literal('true'),
      title: TfArg.literal('allow-all'),
      location: TfArg.literal('any.file.anywhere'),
      description: TfArg.literal('Always true'),
    ),
  ),
);
```

## Full catalog example coverage

As of PR [#127](https://github.com/nozomi-koborinai/terradart/pull/127), **`tool/example_debt.yaml` is empty** — every curated factory and the `GoogleProject` data source appears in at least one quickstart synth output (machine-checked by `dart tool/check_docs_consistency.dart`). Catalog size grows with later Waves (e.g. Wave 33 → **203 entries**).

Final backfill (no new catalog entries):

| Quickstart | Factories added |
| --- | --- |
| [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) | `GoogleIapWebBackendServiceIamBinding` (authoritative IAP accessor list; shown alongside the additive `*_iam_member`) |
| [ops_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/ops_quickstart) | `GoogleLoggingFolderSink`, `GoogleLoggingOrganizationSink` (`ops_folder_id` / `ops_organization_id` Terraform variables — apply needs folder/org permissions) |

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
| `0.12.13` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) | trust config + issuance config |
| `0.12.13` | [pubsub_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/pubsub_quickstart) | `GoogleProject` data source |
| `0.12.14` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) | Private CA pool → issuance config ref |
| `0.12.15` | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) | Private CA root authority in pool |
| *(backfill)* | [compute_lb_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_lb_quickstart) | IAP binding (`*_iam_binding` alongside member) |
| *(backfill)* | [ops_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/ops_quickstart) | folder + organization logging sinks |

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

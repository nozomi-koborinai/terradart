---
title: Waves 23–41
description: Curated google_* factories shipped through Wave 41 (v0.12.10–v0.15.0) with example stack pointers.
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

## v0.15.0 — Wave 35 — AlloyDB backup, Memcache, Spanner

Adds `google_alloydb_backup`, `google_memcache_instance`, `google_spanner_instance`, and `google_spanner_database`.

Catalog after Wave 35: **206 curated resource factories + 1 data source** (207 catalog entries). 34 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_alloydb_backup` | `GoogleAlloydbBackup` | `alloydb` | [cloud_sql_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_sql_quickstart) |
| `google_memcache_instance` | `GoogleMemcacheInstance` | `memcache` | [cloud_run_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart) |
| `google_spanner_instance` | `GoogleSpannerInstance` | `spanner` | [ops_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/ops_quickstart) |
| `google_spanner_database` | `GoogleSpannerDatabase` | `spanner` | [ops_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/ops_quickstart) |

## Wave 61 — Cloud Deploy

Adds three Cloud Deploy factories on a new `clouddeploy` barrel — delivery pipeline, target, and custom target type (nested config passed as structured maps) — and a new [clouddeploy_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/clouddeploy_quickstart) (a Cloud Run target + pipeline + custom target type).

Catalog after Wave 61: **308 curated resource factories + 1 data source** (309 catalog entries). 55 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_clouddeploy_delivery_pipeline` | `GoogleClouddeployDeliveryPipeline` | `clouddeploy` | [clouddeploy_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/clouddeploy_quickstart) |
| `google_clouddeploy_target` | `GoogleClouddeployTarget` | `clouddeploy` | [clouddeploy_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/clouddeploy_quickstart) |
| `google_clouddeploy_custom_target_type` | `GoogleClouddeployCustomTargetType` | `clouddeploy` | [clouddeploy_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/clouddeploy_quickstart) |

## Wave 60 — GKE Hub fleet scope + namespace

Adds `google_gke_hub_scope` and `google_gke_hub_namespace` on the existing `container` barrel — fleet team-management scaffolding that needs no cluster — with a new lightweight [gke_hub_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/gke_hub_quickstart).

Catalog after Wave 60: **305 curated resource factories + 1 data source** (306 catalog entries). 54 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_gke_hub_scope` | `GoogleGkeHubScope` | `container` | [gke_hub_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/gke_hub_quickstart) |
| `google_gke_hub_namespace` | `GoogleGkeHubNamespace` | `container` | [gke_hub_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/gke_hub_quickstart) |

## Wave 59 — Cloud Healthcare store IAM members

Adds the store-level `*_iam_member` adjuncts on the existing `healthcare` barrel — `google_healthcare_dicom_store_iam_member`, `google_healthcare_hl7_v2_store_iam_member`, `google_healthcare_consent_store_iam_member` — exercised by extending [healthcare_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/healthcare_quickstart) with per-store viewer grants.

Catalog after Wave 59: **303 curated resource factories + 1 data source** (304 catalog entries). 54 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_healthcare_dicom_store_iam_member` | `GoogleHealthcareDicomStoreIamMember` | `healthcare` | [healthcare_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/healthcare_quickstart) |
| `google_healthcare_hl7_v2_store_iam_member` | `GoogleHealthcareHl7V2StoreIamMember` | `healthcare` | [healthcare_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/healthcare_quickstart) |
| `google_healthcare_consent_store_iam_member` | `GoogleHealthcareConsentStoreIamMember` | `healthcare` | [healthcare_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/healthcare_quickstart) |

## Wave 58 — BigQuery standalone dataset access

Adds `google_bigquery_dataset_access` on the existing `bigquery` barrel — the standalone (non-inline) counterpart of `GoogleBigqueryDataset.access`, with typed sealed-style helpers (`BigqueryDatasetAccessPredefinedGroup` enum, authorized view / routine / dataset blocks). Exercised by extending [bigquery_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/bigquery_quickstart) (synth + `terraform validate`; bigquery_quickstart is apply-smoke-skip-listed for org-gated datapolicy/analyticshub resources).

Catalog after Wave 58: **300 curated resource factories + 1 data source** (301 catalog entries). 54 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_bigquery_dataset_access` | `GoogleBigqueryDatasetAccess` | `bigquery` | [bigquery_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/bigquery_quickstart) |

## Wave 57 — Cloud Healthcare HL7v2 store

Adds `google_healthcare_hl7_v2_store` (with a typed `Hl7V2StoreParserConfig` block + `Hl7V2StoreParserConfigVersion` enum) on the existing `healthcare` barrel, exercised by extending [healthcare_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/healthcare_quickstart).

Catalog after Wave 57: **299 curated resource factories + 1 data source** (300 catalog entries). 54 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_healthcare_hl7_v2_store` | `GoogleHealthcareHl7V2Store` | `healthcare` | [healthcare_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/healthcare_quickstart) |

## Wave 56 — Dialogflow agent

Adds `google_dialogflow_agent` (+ `DialogflowAgentApiVersion` / `DialogflowAgentMatchMode` / `DialogflowAgentTier` enums) on the existing `dialogflow` barrel, exercised by extending [dialogflow_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dialogflow_quickstart) with the project's Dialogflow ES agent.

Catalog after Wave 56: **298 curated resource factories + 1 data source** (299 catalog entries). 54 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_dialogflow_agent` | `GoogleDialogflowAgent` | `dialogflow` | [dialogflow_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dialogflow_quickstart) |

## Wave 55 — Cloud Observability

Adds `google_observability_trace_scope` on a new `observability` barrel and a new [observability_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/observability_quickstart) (a Trace scope over the current project).

Catalog after Wave 55: **297 curated resource factories + 1 data source** (298 catalog entries). 54 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_observability_trace_scope` | `GoogleObservabilityTraceScope` | `observability` | [observability_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/observability_quickstart) |

## Wave 54 — Cloud Healthcare

Adds four Cloud Healthcare factories on a new `healthcare` barrel — dataset, DICOM store, consent store, and the dataset `*_iam_member` adjunct — and a new [healthcare_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/healthcare_quickstart).

Catalog after Wave 54: **296 curated resource factories + 1 data source** (297 catalog entries). 53 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_healthcare_dataset` | `GoogleHealthcareDataset` | `healthcare` | [healthcare_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/healthcare_quickstart) |
| `google_healthcare_dicom_store` | `GoogleHealthcareDicomStore` | `healthcare` | [healthcare_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/healthcare_quickstart) |
| `google_healthcare_consent_store` | `GoogleHealthcareConsentStore` | `healthcare` | [healthcare_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/healthcare_quickstart) |
| `google_healthcare_dataset_iam_member` | `GoogleHealthcareDatasetIamMember` | `healthcare` | [healthcare_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/healthcare_quickstart) |

## Wave 53 — Network Security lists

Adds `google_network_security_address_group` (+ `NetworkSecurityAddressGroupType` enum) and `google_network_security_url_lists` on the existing `network` barrel, with a new [network_security_lists_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/network_security_lists_quickstart) (an IPv4 address group + a URL list).

Catalog after Wave 53: **292 curated resource factories + 1 data source** (293 catalog entries). 52 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_network_security_address_group` | `GoogleNetworkSecurityAddressGroup` | `network` | [network_security_lists_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/network_security_lists_quickstart) |
| `google_network_security_url_lists` | `GoogleNetworkSecurityUrlLists` | `network` | [network_security_lists_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/network_security_lists_quickstart) |

## Wave 52 — Parameter Manager

Adds four Parameter Manager factories on a new `parameter_manager` barrel — global parameter (+ `ParameterManagerParameterFormat` enum), parameter version, regional parameter (+ enum), and regional parameter version — and a new [parameter_manager_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/parameter_manager_quickstart) with a global + regional parameter. (The two version factories are tracked in `tool/example_debt.yaml`: their `parameter_data` is sensitive, so a literal is rejected by synth and a TF variable would break the applyable example.)

Catalog after Wave 52: **290 curated resource factories + 1 data source** (291 catalog entries). 52 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_parameter_manager_parameter` | `GoogleParameterManagerParameter` | `parameter_manager` | [parameter_manager_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/parameter_manager_quickstart) |
| `google_parameter_manager_parameter_version` | `GoogleParameterManagerParameterVersion` | `parameter_manager` | _(tool/example_debt.yaml)_ |
| `google_parameter_manager_regional_parameter` | `GoogleParameterManagerRegionalParameter` | `parameter_manager` | [parameter_manager_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/parameter_manager_quickstart) |
| `google_parameter_manager_regional_parameter_version` | `GoogleParameterManagerRegionalParameterVersion` | `parameter_manager` | _(tool/example_debt.yaml)_ |

## Wave 51 — Dataplex lake

Adds `google_dataplex_lake` and `google_dataplex_lake_iam_member` on the existing `dataplex` barrel, exercised by extending [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) with a lake + resource-level IAM member.

Catalog after Wave 51: **286 curated resource factories + 1 data source** (287 catalog entries). 51 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_dataplex_lake` | `GoogleDataplexLake` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |
| `google_dataplex_lake_iam_member` | `GoogleDataplexLakeIamMember` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |

## Wave 50 — Document AI

Adds `google_document_ai_processor` on a new `document_ai` barrel and a new [document_ai_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/document_ai_quickstart) that provisions an OCR processor.

Catalog after Wave 50: **284 curated resource factories + 1 data source** (285 catalog entries). 51 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_document_ai_processor` | `GoogleDocumentAiProcessor` | `document_ai` | [document_ai_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/document_ai_quickstart) |

## Wave 49 — Secret Manager regional

Adds three regional Secret Manager factories on the existing `secret_manager` barrel — regional secret, regional secret version, and the regional secret `*_iam_member` adjunct — exercised by extending [secret_manager_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/secret_manager_quickstart) with a regional secret + accessor IAM member. (The regional version factory is tracked in `tool/example_debt.yaml`: regional secrets lack a write-only data field, so its sensitive `secret_data` cannot be supplied as a literal without making the example require a Terraform variable.)

Catalog after Wave 49: **283 curated resource factories + 1 data source** (284 catalog entries). 50 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_secret_manager_regional_secret` | `GoogleSecretManagerRegionalSecret` | `secret_manager` | [secret_manager_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/secret_manager_quickstart) |
| `google_secret_manager_regional_secret_version` | `GoogleSecretManagerRegionalSecretVersion` | `secret_manager` | _(tool/example_debt.yaml)_ |
| `google_secret_manager_regional_secret_iam_member` | `GoogleSecretManagerRegionalSecretIamMember` | `secret_manager` | [secret_manager_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/secret_manager_quickstart) |

## Wave 48 — Compute static route + project metadata

Adds `google_compute_route` and `google_compute_project_metadata_item` on the existing `compute` barrel, exercised by a new lightweight [compute_route_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_route_quickstart) (a custom-mode VPC + static route + project metadata item — all free, no VMs).

Catalog after Wave 48: **280 curated resource factories + 1 data source** (281 catalog entries). 50 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_compute_route` | `GoogleComputeRoute` | `compute` | [compute_route_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_route_quickstart) |
| `google_compute_project_metadata_item` | `GoogleComputeProjectMetadataItem` | `compute` | [compute_route_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_route_quickstart) |

## Wave 47 — Workflows

Adds `google_workflows_workflow` on a new `workflows` barrel (with `WorkflowsWorkflowCallLogLevel` / `WorkflowsWorkflowExecutionHistoryLevel` enums) and a new [workflows_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/workflows_quickstart) that defines a workflow from inline YAML.

Catalog after Wave 47: **278 curated resource factories + 1 data source** (279 catalog entries). 50 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_workflows_workflow` | `GoogleWorkflowsWorkflow` | `workflows` | [workflows_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/workflows_quickstart) |

## Wave 46 — Dataplex business glossary

Adds four Dataplex business-glossary factories on the existing `dataplex` barrel — glossary, glossary category, glossary term, and the glossary `*_iam_member` adjunct — exercised by extending [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart).

Catalog after Wave 46: **277 curated resource factories + 1 data source** (278 catalog entries). 49 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_dataplex_glossary` | `GoogleDataplexGlossary` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |
| `google_dataplex_glossary_category` | `GoogleDataplexGlossaryCategory` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |
| `google_dataplex_glossary_term` | `GoogleDataplexGlossaryTerm` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |
| `google_dataplex_glossary_iam_member` | `GoogleDataplexGlossaryIamMember` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |

## Wave 45 — Dataplex Universal Catalog

Adds six Dataplex Universal Catalog factories on the existing `dataplex` barrel — entry group, entry type, aspect type, and their `*_iam_member` adjuncts — exercised by extending [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart).

Catalog after Wave 45: **273 curated resource factories + 1 data source** (274 catalog entries). 49 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_dataplex_entry_group` | `GoogleDataplexEntryGroup` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |
| `google_dataplex_entry_type` | `GoogleDataplexEntryType` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |
| `google_dataplex_aspect_type` | `GoogleDataplexAspectType` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |
| `google_dataplex_entry_group_iam_member` | `GoogleDataplexEntryGroupIamMember` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |
| `google_dataplex_entry_type_iam_member` | `GoogleDataplexEntryTypeIamMember` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |
| `google_dataplex_aspect_type_iam_member` | `GoogleDataplexAspectTypeIamMember` | `dataplex` | [dataplex_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/dataplex_quickstart) |

## Wave 44 — Service Directory

Adds five `google_service_directory_*` factories on a new `service_directory` barrel with [service_directory_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/service_directory_quickstart): a namespace, a service, an endpoint, and namespace/service `*_iam_member` adjuncts.

Catalog after Wave 44: **267 curated resource factories + 1 data source** (268 catalog entries). 49 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_service_directory_namespace` | `GoogleServiceDirectoryNamespace` | `service_directory` | [service_directory_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/service_directory_quickstart) |
| `google_service_directory_service` | `GoogleServiceDirectoryService` | `service_directory` | [service_directory_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/service_directory_quickstart) |
| `google_service_directory_endpoint` | `GoogleServiceDirectoryEndpoint` | `service_directory` | [service_directory_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/service_directory_quickstart) |
| `google_service_directory_namespace_iam_member` | `GoogleServiceDirectoryNamespaceIamMember` | `service_directory` | [service_directory_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/service_directory_quickstart) |
| `google_service_directory_service_iam_member` | `GoogleServiceDirectoryServiceIamMember` | `service_directory` | [service_directory_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/service_directory_quickstart) |

## Wave 43 — Essential Contacts

Adds `google_essential_contacts_contact` on a new `essential_contacts` barrel. Exercised by extending [monitoring_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/monitoring_quickstart) with the Essential Contacts API enablement + a technical-notifications contact.

Catalog after Wave 43: **262 curated resource factories + 1 data source** (263 catalog entries). 48 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_essential_contacts_contact` | `GoogleEssentialContactsContact` | `essential_contacts` | [monitoring_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/monitoring_quickstart) |

## Wave 42 — Resource Manager Tags

Adds five `google_tags_*` factories on a new `tags` barrel with [tags_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/tags_quickstart): a project-scoped tag key + value, a tag binding on the project, and the tag key/value `*_iam_member` adjuncts.

Catalog after Wave 42: **261 curated resource factories + 1 data source** (262 catalog entries). 47 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_tags_tag_key` | `GoogleTagsTagKey` | `tags` | [tags_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/tags_quickstart) |
| `google_tags_tag_value` | `GoogleTagsTagValue` | `tags` | [tags_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/tags_quickstart) |
| `google_tags_tag_binding` | `GoogleTagsTagBinding` | `tags` | [tags_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/tags_quickstart) |
| `google_tags_tag_key_iam_member` | `GoogleTagsTagKeyIamMember` | `tags` | [tags_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/tags_quickstart) |
| `google_tags_tag_value_iam_member` | `GoogleTagsTagValueIamMember` | `tags` | [tags_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/tags_quickstart) |

## v0.15.0 — Wave 41 — IAM binding/policy adjuncts

Adds authoritative IAM `*_iam_binding` and `*_iam_policy` factories where sibling `*_iam_member` resources already ship, extending existing quickstarts.

Catalog after Wave 41: **256 curated resource factories + 1 data source** (257 catalog entries). 46 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_bigquery_routine_iam_binding` | `GoogleBigqueryRoutineIamBinding` | `bigquery` | [bigquery_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/bigquery_quickstart) |
| `google_bigquery_routine_iam_policy` | `GoogleBigqueryRoutineIamPolicy` | `bigquery` | [bigquery_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/bigquery_quickstart) |
| `google_compute_region_instant_snapshot_iam_binding` | `GoogleComputeRegionInstantSnapshotIamBinding` | `compute` | [compute_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_quickstart) |
| `google_compute_region_instant_snapshot_iam_policy` | `GoogleComputeRegionInstantSnapshotIamPolicy` | `compute` | [compute_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_quickstart) |
| `google_discovery_engine_search_engine_iam_binding` | `GoogleDiscoveryEngineSearchEngineIamBinding` | `discovery_engine` | [discovery_engine_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/discovery_engine_quickstart) |
| `google_discovery_engine_search_engine_iam_policy` | `GoogleDiscoveryEngineSearchEngineIamPolicy` | `discovery_engine` | [discovery_engine_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/discovery_engine_quickstart) |

## v0.15.0 — Wave 40 — Oracle Exadata

Adds four Oracle Exadata factories on the `oracle` barrel with [oracle_exadata_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_exadata_quickstart).

Catalog after Wave 40: **256 curated resource factories + 1 data source** (257 catalog entries). 46 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_oracle_database_cloud_exadata_infrastructure` | `GoogleOracleDatabaseCloudExadataInfrastructure` | `oracle` | [oracle_exadata_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_exadata_quickstart) |
| `google_oracle_database_cloud_vm_cluster` | `GoogleOracleDatabaseCloudVmCluster` | `oracle` | [oracle_exadata_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_exadata_quickstart) |
| `google_oracle_database_exadb_vm_cluster` | `GoogleOracleDatabaseExadbVmCluster` | `oracle` | [oracle_exadata_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_exadata_quickstart) |
| `google_oracle_database_exascale_db_storage_vault` | `GoogleOracleDatabaseExascaleDbStorageVault` | `oracle` | [oracle_exadata_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_exadata_quickstart) |

## v0.15.0 — Wave 39 — Oracle DB System

Adds `google_oracle_database_db_system` on the `oracle` barrel with [oracle_db_system_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_db_system_quickstart).

Catalog after Wave 39: **256 curated resource factories + 1 data source** (257 catalog entries). 46 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_oracle_database_db_system` | `GoogleOracleDatabaseDbSystem` | `oracle` | [oracle_db_system_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_db_system_quickstart) |

## v0.15.0 — Wave 38 — Oracle Autonomous Database

Adds `google_oracle_database_autonomous_database` on the `oracle` barrel with [oracle_autonomous_database_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_autonomous_database_quickstart).

Catalog after Wave 38: **245 curated resource factories + 1 data source** (246 catalog entries). 46 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_oracle_database_autonomous_database` | `GoogleOracleDatabaseAutonomousDatabase` | `oracle` | [oracle_autonomous_database_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_autonomous_database_quickstart) |

## v0.15.0 — Wave 37 — Oracle ODB networking

Extends the `oracle` barrel with ODB network and subnet factories and tightens [oracle_goldengate_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_goldengate_quickstart) to provision VPC → ODB network → subnet before GoldenGate resources.

Catalog after Wave 37: **244 curated resource factories + 1 data source** (245 catalog entries). 46 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_oracle_database_odb_network` | `GoogleOracleDatabaseOdbNetwork` | `oracle` | [oracle_goldengate_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_goldengate_quickstart) |
| `google_oracle_database_odb_subnet` | `GoogleOracleDatabaseOdbSubnet` | `oracle` | [oracle_goldengate_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_goldengate_quickstart) |

## v0.15.0 — Wave 36 — Oracle GoldenGate

Adds Oracle Database@Google Cloud GoldenGate deployment, connection, and connection assignment on a new `oracle` barrel. New [oracle_goldengate_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_goldengate_quickstart).

Catalog after Wave 36: **242 curated resource factories + 1 data source** (243 catalog entries). 46 service barrels.

| Terraform type | Dart factory | Barrel | Example |
| --- | --- | --- | --- |
| `google_oracle_database_goldengate_deployment` | `GoogleOracleDatabaseGoldengateDeployment` | `oracle` | [oracle_goldengate_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_goldengate_quickstart) |
| `google_oracle_database_goldengate_connection` | `GoogleOracleDatabaseGoldengateConnection` | `oracle` | [oracle_goldengate_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_goldengate_quickstart) |
| `google_oracle_database_goldengate_connection_assignment` | `GoogleOracleDatabaseGoldengateConnectionAssignment` | `oracle` | [oracle_goldengate_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/oracle_goldengate_quickstart) |

## v0.15.0 — Wave 34 — Cloud Filestore

Adds managed NFS (`google_filestore_instance`) plus backup and snapshot adjuncts on a new `filestore` barrel. Extends [compute_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/compute_quickstart).

Catalog after Wave 34 (stacked on Wave 35): **239 curated resource factories + 1 data source** (240 catalog entries). 45 service barrels.

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

# Changelog

## 0.18.0 - 2026-06-21

Lockstep release for Wave 71 (`terradart_google` App Engine). Catalog: **331 entries** (330 curated resource factories + 1 data source) across **59 service barrels**. No MCP protocol or tool changes.

## 0.17.1 - 2026-06-21

Lockstep version bump for `terradart_google` v0.17.1. Catalog unchanged at
**323 entries** (322 curated resource factories + 1 data source) across
58 service barrels. No MCP protocol or tool changes.

## 0.17.0 - 2026-06-21

Lockstep version bump for `terradart_google` v0.17.0. Catalog unchanged at
**323 entries** (322 curated resource factories + 1 data source) across
58 service barrels. No MCP protocol or tool changes.

## 0.16.0 - 2026-06-21

Lockstep version bump for `terradart_google` v0.16.0. MCP catalog grows to
**323 entries** (322 curated resource factories + 1 data source) across
58 service barrels. No MCP protocol or tool changes.

## 0.15.0 - 2026-06-20

Lockstep version bump for `terradart_google` v0.15.0. MCP catalog grows to
**257 entries** (256 curated resource factories + 1 data source) across
46 service barrels. No MCP protocol or tool changes.

## 0.14.0 - 2026-06-16

Add the `check_coverage` MCP tool (5th catalog tool): given `terraform show -json`
output, it reports terradart_google coverage. Wraps the new `terradart_coverage`
package.

## 0.13.0 - 2026-06-14

Lockstep version bump for `terradart_google` v0.13.0. MCP catalog: **210 entries** (35 service barrels). `TimeProvider` / `TimeSleep` now come from `package:terradart_google/time.dart` (moved out of `terradart_core`).

## 0.12.19

Lockstep version bump for `terradart_google` v0.12.19. MCP catalog grows by one Memorystore factory (200 entries; 31 service barrels). `TimeProvider` / `TimeSleep` available via `terradart_core`.

## 0.12.18

Lockstep version bump for `terradart_google` v0.12.18. MCP catalog grows by two Private CA factories (199 entries).

## 0.12.17

Lockstep version bump for `terradart_google` v0.12.17 (`Apis.required` / `Barrels` exported from `project.dart`).

## 0.12.16

Lockstep version bump for `terradart_google` v0.12.16. MCP catalog grows by one Private CA factory (197 entries).

## 0.12.15

Lockstep version bump for `terradart_google` v0.12.15. MCP catalog grows by one Private CA factory (196 entries).

## 0.12.14

Lockstep version bump for `terradart_google` v0.12.14. MCP catalog grows by one Private CA factory (195 entries; 30 service barrels).

## 0.12.13

Lockstep version bump for `terradart_google` v0.12.13. MCP catalog grows by two Certificate Manager factories (194 entries total).

## 0.12.12

Lockstep version bump for `terradart_google` v0.12.12. MCP catalog unchanged (192 entries). Sealed-type metadata for seven factories with `exactly_one_of` enforcement.

## 0.12.11

Lockstep version bump for `terradart_google` v0.12.11. MCP catalog grows by five entries (VPC Access connector + four Certificate Manager factories; 192 entries total, 29 service barrels). Artifact Registry remote helper types expanded.

## 0.12.10

Lockstep version bump for `terradart_google` v0.12.10. MCP catalog grows by ten entries across DNS, Eventarc, Cloud Run, IAP, Compute, and BigQuery (187 entries total).

## 0.12.9

Lockstep version bump for `terradart_google` v0.12.9. MCP catalog grows by five entries across BigQuery Analytics Hub IAM and Compute regional Armor (177 entries total).

## 0.12.8

Lockstep version bump for `terradart_google` v0.12.8. MCP catalog grows by twenty-four entries across Eventarc, Compute, BigQuery, Storage, Cloud SQL, and Firebase App Check (172 entries total).

## 0.12.7

Lockstep version bump for `terradart_google` v0.12.7. MCP catalog grows by eleven entries across Monitoring, Compute, KMS, Pub/Sub, Storage, and Logging (148 entries total).

## 0.12.6

Lockstep version bump for `terradart_google` v0.12.6. MCP catalog grows by six GKE Backup entries, the `gke_backup` barrel, and five Logging project-ops entries in the `logging` barrel (137 entries total).

## 0.12.5

Lockstep version bump for `terradart_google` v0.12.5. MCP catalog grows by two GKE Hub entries (`google_gke_hub_fleet`, `google_gke_hub_membership`) in the `container` barrel (126 entries total).

## 0.12.4

Lockstep version bump for `terradart_google` v0.12.4. MCP catalog grows by two GKE entries (`google_container_cluster`, `google_container_node_pool`) and the new `container` barrel (124 entries total).

## 0.12.3

Lockstep version bump for `terradart_google` v0.12.3. MCP catalog metadata for `GoogleIamWorkloadIdentityPoolProvider` reflects the sealed `trustSource` constructor (no new catalog entries).

## 0.12.2

Lockstep version bump for `terradart_google` v0.12.2. MCP catalog picks up two new entries (`google_iam_workload_identity_pool_provider`, `google_iap_web_backend_service_iam_binding`) and the new `iap` barrel via the static `terradartCatalog`.

## 0.12.1

- **Fixed** — `list_resources` and `list_barrels` now return a JSON object (`{"resources": [...]}` / `{"barrels": [...]}`) instead of a bare array. MCP requires a tool result's `structuredContent` to be an object (record), so strict clients (e.g. Cursor) rejected the previous array form with "expected record, received array".
- **Added** — Intel macOS (`terradart-mcp-darwin-amd64`) binary, built on an Apple Silicon runner via Rosetta 2 (Dart has no cross-compile, and GitHub's Intel runners are scarce).

## 0.12.0

Initial release.

- **`terradart-mcp`** — a Model Context Protocol (MCP) server that exposes the curated `terradart_google` GCP factory catalog to AI coding agents, built on `package:genkit_mcp`.
- **4 catalog tools:** `list_resources` (filterable list of curated factories), `list_barrels` (per-service barrels), `get_resource_schema` (constructor params, nested types, and sensitive fields for one resource), and `get_quickstart` (worked end-to-end stack scenarios).
- Reads the static `terradartCatalog` from `terradart_google` (no Terraform schema parsing at runtime).
- Distributed as a self-contained binary via Homebrew + GitHub Release (`publish_to: none` — not published to pub.dev).

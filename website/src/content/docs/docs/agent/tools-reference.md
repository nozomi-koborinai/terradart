---
title: Tools reference
description: The six tools exposed by terradart-mcp, with request/response examples.
---

`terradart-mcp` exposes six tools over MCP. All six are invoked with the standard MCP `tools/call` method. The envelope looks like this:

```json
{
  "jsonrpc": "2.0",
  "id": 1,
  "method": "tools/call",
  "params": {
    "name": "list_resources",
    "arguments": { "barrel": "pubsub" }
  }
}
```

MCP clients build that envelope for you — you usually just see the `name` and `arguments`. The examples below show the `arguments` payload and the tool's result for each tool.

## `list_barrels`

Lists the per-service barrels with their resource counts. No arguments.

**Input**

```json
{}
```

**Output** — an object with a `barrels` array of `{ name, resource_count }`, one entry per barrel (133 in total, including the `data` barrel):

```json
{
  "barrels": [
    { "name": "compute", "resource_count": 34 },
    { "name": "pubsub", "resource_count": 5 }
  ]
}
```

Use this first to see what services TerraDart covers and how large each one is.

## `list_resources`

Lists curated resources and data sources. Pass `barrel` to filter to one service, or omit it to list all 1798.

**Input** (filter to one barrel)

```json
{ "barrel": "pubsub" }
```

**Input** (list everything)

```json
{}
```

**Output** — an object with a `resources` array of `{ name, barrel, summary }`:

```json
{
  "resources": [
    {
      "name": "google_pubsub_topic",
      "barrel": "pubsub",
      "summary": "A named resource to which messages are sent by publishers."
    },
    {
      "name": "google_pubsub_subscription",
      "barrel": "pubsub",
      "summary": "A named resource representing the stream of messages."
    }
  ]
}
```

The `name` is the Terraform type name — exactly what you pass to `get_resource_schema`.

## `get_resource_schema`

Returns the constructor signature, nested types, sensitive fields, and doc comment for one resource, looked up by its Terraform type name. If the name is not found, it returns Levenshtein near-miss suggestions instead.

**Input** (required `name`)

```json
{ "name": "google_pubsub_topic" }
```

**Output** — on a hit:

```json
{
  "found": true,
  "constructor_signature": "GooglePubsubTopic({localName, name, labels, messageRetentionDuration, ...})",
  "nested_types": ["PubsubTopicMessageStoragePolicy", "PubsubTopicSchemaSettings"],
  "sensitive_fields": [],
  "doc_comment": "A named resource to which messages are sent by publishers."
}
```

**Output** — on a miss (note the typo), with suggestions:

```json
{
  "found": false,
  "suggestions": ["google_pubsub_topic", "google_pubsub_subscription"]
}
```

This is the workhorse tool for authoring: it tells the agent the exact Dart class name (`GooglePubsubTopic`) and its constructor parameters, so the generated code compiles.

## `get_quickstart`

Returns a runnable Dart `Stack` template for a named scenario. If the scenario key is unknown, it returns the list of available scenarios.

**Input** (required `scenario`)

```json
{ "scenario": "cloud-run-webhook" }
```

**Output** — on a hit:

```json
{
  "found": true,
  "dart_code": "import 'package:terradart_core/terradart_core.dart';\n// ... a full Stack subclass ...",
  "description": "A Cloud Run v2 service fronting a webhook, with a public invoker IAM binding.",
  "gcs_refs": [
    "https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloud_run_quickstart"
  ]
}
```

**Output** — on a miss, with the available scenario keys:

```json
{
  "found": false,
  "available": ["cloud-run-webhook", "data-pipeline", "lb-stack", "firestore-seeded-data"]
}
```

Each template is adapted from a CI-validated example in the repository, so the class names, constructor parameters, and imports compile against the current TerraDart API. The `gcs_refs` link to the full, deployable example for that scenario.

## `check_coverage`

Returns a coverage report for an existing Terraform plan or state JSON. Pass the full output of `terraform show -json`; the tool reports how much of the config is already covered by curated `terradart_google` factories and which Terraform types are not in the catalog.

**Input** (required `tf_json`)

```json
{ "tf_json": "{\"values\":{\"root_module\":{\"resources\":[]}}}" }
```

**Output** — on valid input:

```json
{
  "summary": {
    "distinctTypes": 0,
    "supportedTypes": 0,
    "totalOccurrences": 0,
    "supportedOccurrences": 0,
    "coverageByTypePct": 100.0,
    "coverageByOccurrencePct": 100.0
  },
  "supported": [],
  "notInCatalog": [],
  "perModule": {},
  "unparseable": []
}
```

**Output** — on invalid JSON:

```json
{
  "error": "input is not valid JSON: ..."
}
```

The report is read-only analysis. It does not run Terraform, read local files, or contact Google Cloud.

## `migrate_module`

Translates one Terraform module into a TerraDart package: `terradart-migrate`, over MCP. Pass the module's own configuration text as `source` — a `.tf` file's HCL or a `.tf.json` file's JSON — and the tool answers with the generated `Stack`, the package files around it, the sidecar holding whatever has no curated factory yet, and a report naming every block either way.

Resource addresses are preserved, so `terraform plan` against the existing state reports no changes once the sidecar sits beside the Stack's `main.tf.json`. Nothing is read from disk and no `terraform` runs: the module arrives as text in the call and leaves as text in the result.

| Argument | Required | Meaning |
| :--- | :--- | :--- |
| `source` | yes | The whole Terraform configuration as text — HCL or `.tf.json`. |
| `name` | no | Names the module. The Stack class is its PascalCase form with `Stack` appended, the package its snake_case form. Defaults to `main`. |
| `syntax` | no | `auto` (default), `hcl`, or `json`. `auto` reads a leading `{` as `.tf.json`. |
| `allow_todo` | no | Write a `TODO` comment per untranslated block into the Stack instead of a sidecar. The plan then differs until the TODOs are ported. Defaults to `false`. |

**Input**

```json
{
  "source": "resource \"google_pubsub_topic\" \"orders\" {\n  name = \"orders-prod\"\n}\n\nresource \"acme_widget\" \"w\" {\n  size = 3\n}\n",
  "name": "orders"
}
```

**Output** — the Stack in `dart_source`, the leftover in `sidecar`, the accounting in `report` (abridged here; `infra_source` and `pubspec` carry `bin/infra.dart` and `pubspec.yaml`):

```json
{
  "migrated": true,
  "package_name": "orders",
  "stack_class": "OrdersStack",
  "stack_file": "lib/orders_stack.dart",
  "dart_source": "final class OrdersStack extends Stack {\n  OrdersStack() : super(providers: [const GoogleProvider()]) {\n    add(\n      GooglePubsubTopic(\n        localName: r'orders',\n        name: TfArg.literal(r'orders-prod'),\n      ),\n    );\n  }\n}\n",
  "infra_source": "…",
  "pubspec": "…",
  "sidecar": {
    "terradart_leftover.tf": "# terradart-migrate: no curated factory for resource type \"acme_widget\" (request curation)\nresource \"acme_widget\" \"w\" {\n  size = 3\n}\n"
  },
  "sidecar_placements": { "acme_widget.w": "terradart_leftover.tf" },
  "report": {
    "module": "orders",
    "stackClass": "OrdersStack",
    "complete": false,
    "migrated": [
      { "address": "provider.google" },
      { "address": "google_pubsub_topic.orders", "dartName": "orders" }
    ],
    "kept": [
      {
        "address": "acme_widget.w",
        "reason": "no curated factory for resource type \"acme_widget\" (request curation)"
      }
    ],
    "warnings": [],
    "packages": ["terradart_google"],
    "providers": ["google"],
    "expanded": []
  },
  "report_text": "terradart-migrate: orders → OrdersStack\n…"
}
```

`sidecar` maps file name to content for the directory the Stack synthesizes into (`tf-out/`), and `sidecar_placements` says which file each kept address landed in. When nothing in the module translates, `migrated` is `false`, `dart_source` is empty, and the sidecar is the whole answer.

**Output** — on a source that does not parse:

```json
{
  "error": "source is not valid HCL: expected \"}\" to close the single-line block",
  "diagnostics": ["main.tf:1:15: expected \"}\" to close the single-line block"]
}
```

For a whole tree of modules rather than one file — child modules, environments, `moved` blocks, a re-runnable sidecar — use the [`terradart-migrate` CLI](/docs/migrate-from-hcl/) instead; this tool is the single-module slice of it, for an agent that already has the text in hand.

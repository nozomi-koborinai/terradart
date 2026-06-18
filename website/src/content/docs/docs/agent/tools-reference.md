---
title: Tools reference
description: The four read-only catalog tools exposed by terradart-mcp, with request/response examples.
---

`terradart-mcp` exposes four read-only tools over MCP. All four are invoked with the standard MCP `tools/call` method. The envelope looks like this:

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

**Output** — an object with a `barrels` array of `{ name, resource_count }`, one entry per barrel (38 in total, including the `data` barrel):

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

Lists curated resources and data sources. Pass `barrel` to filter to one service, or omit it to list all 219.

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

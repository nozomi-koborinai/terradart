---
title: Recipes
description: Prompt patterns for using terradart-mcp from a coding agent.
---

Once `terradart-mcp` is connected ([Connecting clients](/docs/agent/clients/)), you mostly drive it through natural-language prompts — the agent picks the right tool. These recipes pair a goal with an example prompt and the tools the agent will reach for. See the [Tools reference](/docs/agent/tools-reference/) for exact inputs and outputs.

## Resource discovery

When you want to know what TerraDart can provision for a given service, ask in plain language. The agent calls `list_barrels` to see the service surface, then `list_resources` (filtered by barrel) to enumerate the specific factories.

> **Prompt:** "What does TerraDart support for Pub/Sub?"

The agent typically calls `list_barrels` (to confirm `pubsub` exists and how many resources it has), then `list_resources` with `{ "barrel": "pubsub" }`, and summarizes the `google_pubsub_*` resources with their one-line descriptions.

## Schema lookup

When you are writing a `Stack` and need the exact constructor for a resource, ask for it by name. The agent calls `get_resource_schema` to get the precise Dart class name, constructor parameters, nested types, and sensitive fields — so the code it writes actually compiles.

> **Prompt:** "How do I construct a Cloud Run v2 service in TerraDart? Show me the constructor."

The agent calls `get_resource_schema` with `{ "name": "google_cloud_run_v2_service" }` and uses the returned `constructor_signature` and `nested_types` to write the `GoogleCloudRunV2Service(...)` call with the right parameters. If you give it a slightly wrong name, the tool's `suggestions` field lets the agent self-correct.

## Scaffolding

When you want a working starting point rather than a single resource, ask for a quickstart. The agent calls `get_quickstart` with a scenario key and drops the returned, CI-validated `Stack` into your project.

> **Prompt:** "Scaffold a Cloud Run webhook stack with TerraDart."

The agent calls `get_quickstart` with `{ "scenario": "cloud-run-webhook" }` and uses the returned `dart_code` as the skeleton, then adapts names and regions to your needs. The four available scenarios are `cloud-run-webhook`, `data-pipeline`, `lb-stack`, and `firestore-seeded-data`; if the agent guesses a key that does not exist, the `available` list steers it to a valid one.

## Architecture / plan review

When you already have a proposed stack (or a design sketch), use the catalog to validate it against real factory names before you write or run anything. The agent cross-checks each resource against `list_resources` and `get_resource_schema`, catching invented class names and wrong parameters early.

> **Prompt:** "Here's my planned TerraDart stack: a Pub/Sub topic, a push subscription, and a Cloud Run service that consumes it. Verify every resource and parameter against the TerraDart catalog before I implement it."

The agent resolves each resource with `get_resource_schema`, flags anything that returns `found: false` (with suggestions), and confirms the constructor parameters exist — turning "looks plausible" into "compiles against the curated API."

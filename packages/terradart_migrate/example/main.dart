import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';

const _mainTf = r'''
provider "google" {
  project = "my-project"
  region  = "us-central1"
}

resource "google_pubsub_topic" "orders" {
  name = "orders"
}

resource "google_pubsub_subscription" "orders_worker" {
  name  = "orders-worker"
  topic = google_pubsub_topic.orders.id
}
''';

/// Minimal example: migrate one Terraform module to a TerraDart Stack and
/// print the report and the generated Stack.
///
/// To migrate a whole directory tree instead, run the CLI:
/// `dart pub global activate terradart_cli` then
/// `terradart migrate --dir infra --out infra_dart`.
void main() {
  final module = TfModule.fromHcl(_mainTf, fileName: 'main.tf');
  final result = migrateModule(module, name: 'orders');

  // ignore: avoid_print
  print(result.report.renderText());
  // ignore: avoid_print
  print(result.stackSource);
}

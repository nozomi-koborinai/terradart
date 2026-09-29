import 'package:terradart_hcl/terradart_hcl.dart';

const _mainTf = r'''
variable "project_id" {
  type = string
}

resource "google_pubsub_topic" "orders" {
  project = var.project_id
  name    = "orders"

  labels = {
    team = "checkout"
  }
}

resource "google_pubsub_subscription" "orders_worker" {
  project = var.project_id
  name    = "orders-worker"
  topic   = google_pubsub_topic.orders.id
}
''';

/// Minimal example: parse a Terraform file, walk its resources, and write
/// one block back out as HCL.
void main() {
  final module = TfModule.fromHcl(_mainTf, fileName: 'main.tf');

  for (final variable in module.variables) {
    // ignore: avoid_print
    print('variable ${variable.name}');
  }
  for (final resource in module.resources) {
    final args = resource.body.attributes.map((a) => a.name).join(', ');
    // ignore: avoid_print
    print('resource ${resource.address}: $args');
  }

  final worker = module.resource(
    'google_pubsub_subscription',
    'orders_worker',
  )!;
  final ref = worker.argument('topic')! as TraversalExpr;
  // ignore: avoid_print
  print('orders_worker.topic references ${ref.dottedPath}');

  // ignore: avoid_print
  print(const HclWriter().writeEntry(worker.block));
}

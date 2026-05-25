/// Illustrates the IaC ↔ app seam: import synth-generated exports instead of
/// hand-typing topic names. Run `dart run bin/infra.dart` first to refresh
/// `lib/generated/orders_stack.app.dart`.
library;

import 'generated/orders_stack.app.dart';

/// Example handler shape (not wired to a real Pub/Sub runtime).
bool acceptsTopic(String eventTopic) =>
    eventTopic == OrdersStackExports.ORDERS_TOPIC_NAME;

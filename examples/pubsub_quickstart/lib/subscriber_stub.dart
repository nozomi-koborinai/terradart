/// Illustrates the IaC ↔ app seam: import synth-generated exports instead of
/// hand-typing topic names. Run `dart run bin/infra.dart` first to refresh
/// `lib/generated/orders_stack.app.dart`.
library;

import 'generated/orders_stack.app.dart';

/// Example handler shape (not wired to a real Pub/Sub runtime).
bool acceptsTopic(String eventTopic) =>
    eventTopic == OrdersStackConstants.ordersTopicName;

/// The topic's full resource path is only known after apply, so it is an
/// output: the deployment sets `ORDERS_TOPIC_ID`, and the generated reader
/// types it (`OrdersStackOutputs.fromEnvironment(Platform.environment)`).
String ordersTopicId(Map<String, String> environment) =>
    OrdersStackOutputs.fromEnvironment(environment).ordersTopicId;

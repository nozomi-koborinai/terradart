import 'package:meta/meta.dart';

/// One `moved { from = ... to = ... }` block: the state object at [from]
/// now belongs to the resource at [to], so a rename does not become a
/// destroy-and-create.
///
/// Register these on a [Stack] with `addMoved`; synth emits the collected
/// entries under the top-level `moved` key. Addresses are written the way
/// Terraform writes them: `google_pubsub_topic.orders`,
/// `google_pubsub_topic.orders[0]`, `google_pubsub_topic.orders["eu"]`,
/// `module.events.google_pubsub_topic.orders`.
///
/// ```dart
/// // `count = 2` unrolled into two resources, state preserved.
/// add(GooglePubsubTopic(localName: 'orders_0', ...));
/// add(GooglePubsubTopic(localName: 'orders_1', ...));
/// addMoved('google_pubsub_topic.orders[0]', 'google_pubsub_topic.orders_0');
/// addMoved('google_pubsub_topic.orders[1]', 'google_pubsub_topic.orders_1');
/// ```
///
/// [to] must name a resource registered on the same Stack (or an address
/// inside a `module.` call); [from] is any address, since the object it
/// names exists only in state. Synth checks both.
@immutable
final class TfMoved {
  const TfMoved({required this.from, required this.to});

  /// The address the state object had.
  final String from;

  /// The address it has now.
  final String to;

  /// The block body as Terraform JSON writes it.
  Map<String, String> toTfJson() => {'from': from, 'to': to};

  @override
  bool operator ==(Object other) =>
      other is TfMoved && other.from == from && other.to == to;

  @override
  int get hashCode => Object.hash(from, to);

  @override
  String toString() => 'TfMoved($from -> $to)';
}

import 'package:meta/meta.dart';

import 'tf_arg.dart';

/// `lifecycle { ... }` block on a resource.
///
/// ```dart
/// final schema = add(GooglePubsubSchema('orders', name: .literal('orders')));
/// add(
///   GooglePubsubTopic(
///     'orders',
///     name: .literal('orders'),
///     lifecycle: .new(
///       createBeforeDestroy: true,
///       ignoreChanges: .of(['labels']),
///       replaceTriggeredBy: [schema, schema.id],
///       conditions: [
///         .post(.expression(r'${self.name != ""}'), 'the topic has no name'),
///       ],
///     ),
///   ),
/// );
/// ```
@immutable
final class LifecycleOptions {
  const LifecycleOptions({
    this.createBeforeDestroy,
    this.preventDestroy,
    this.ignoreChanges,
    this.replaceTriggeredBy,
    this.conditions,
  });

  /// `create_before_destroy`; `false` is written too, overriding the
  /// `true` Terraform propagates from a dependency.
  final bool? createBeforeDestroy;

  /// `prevent_destroy`.
  final bool? preventDestroy;

  /// `ignore_changes`: [IgnoreChanges.all], or [IgnoreChanges.of] the
  /// attribute paths.
  final IgnoreChanges? ignoreChanges;

  /// `replace_triggered_by`: resources of the Stack (`template`) and their
  /// attributes (`template.id`). A data source is not a trigger.
  final List<ReplaceTrigger>? replaceTriggeredBy;

  /// `precondition` / `postcondition` blocks, in order.
  final List<LifecycleCondition>? conditions;
}

/// What `ignore_changes` covers: every attribute, or the listed ones.
@immutable
sealed class IgnoreChanges {
  const IgnoreChanges();

  /// `ignore_changes = [target_size, labels["env"], basic[0].foo]`: one
  /// Terraform attribute path per entry, in snake_case. An empty list
  /// writes nothing.
  const factory IgnoreChanges.of(List<String> attributes) = IgnoreAttributes;

  /// `ignore_changes = all`.
  static const IgnoreChanges all = IgnoreAllChanges._();
}

/// [IgnoreChanges.all].
final class IgnoreAllChanges extends IgnoreChanges {
  const IgnoreAllChanges._();
}

/// [IgnoreChanges.of].
final class IgnoreAttributes extends IgnoreChanges {
  const IgnoreAttributes(this.attributes);

  /// The attribute paths, in Terraform syntax.
  final List<String> attributes;
}

/// A `precondition` or `postcondition` block: Terraform fails the plan
/// ([LifecycleCondition.pre]) or the apply ([LifecycleCondition.post]) with
/// [errorMessage] when [condition] is false.
@immutable
final class LifecycleCondition {
  /// Checked before Terraform plans the resource.
  const LifecycleCondition.pre(this.condition, this.errorMessage)
    : post = false;

  /// Checked after Terraform applies the resource; [condition] can read
  /// `self`.
  const LifecycleCondition.post(this.condition, this.errorMessage)
    : post = true;

  /// The boolean to check: `.expression(r'${self.status == "READY"}')` or
  /// an attribute getter.
  final TfArg<bool> condition;

  /// What Terraform reports when [condition] is false.
  final String errorMessage;

  /// Whether this is a `postcondition`.
  final bool post;
}

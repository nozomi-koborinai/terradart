import 'package:meta/meta.dart';

import 'tf_arg.dart';

/// `lifecycle { ... }` block on a resource.
///
/// `replaceTriggeredBy` accepts `TfRef<dynamic>` because the Terraform
/// argument is "any reference"; we only emit `bareAddress` from each entry.
@immutable
final class LifecycleOptions {
  const LifecycleOptions({
    this.createBeforeDestroy,
    this.preventDestroy,
    this.ignoreChanges,
    this.replaceTriggeredBy,
  });

  final bool? createBeforeDestroy;
  final bool? preventDestroy;

  /// Attribute paths to ignore. Use `['all']` for the special "ignore everything".
  final List<String>? ignoreChanges;

  /// Each entry must produce a Terraform reference string (its `bareAddress`).
  final List<TfRef<dynamic>>? replaceTriggeredBy;
}

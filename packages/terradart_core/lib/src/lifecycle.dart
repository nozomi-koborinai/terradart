import 'package:meta/meta.dart';

import 'tf_ref.dart';

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

/// A `depends_on` entry. Sealed so synth can dispatch on the two cases:
/// "depend on entire resource" vs "depend on a specific ref/attribute".
sealed class DependencyTarget {
  const DependencyTarget();

  /// Renderable bare address (no `${...}`).
  String get bareAddress;
}

@immutable
final class ResourceDependency extends DependencyTarget {
  const ResourceDependency(this.target);

  final TfAddressed target;

  @override
  String get bareAddress => target.tfAddress;
}

@immutable
final class RefDependency extends DependencyTarget {
  const RefDependency(this.ref);

  final TfRef<dynamic> ref;

  @override
  String get bareAddress => ref.bareAddress;
}

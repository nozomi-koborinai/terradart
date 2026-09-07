/// What a migration did with every block of a module.
library;

/// A block that became Dart.
final class MigratedItem {
  const MigratedItem({required this.address, this.dartName});

  /// `google_pubsub_topic.orders`, `data.google_project.current`,
  /// `variable.project_id`, `output.topic_id`, `terraform.backend`, ...
  final String address;

  /// The Dart local holding the resource, when one was needed.
  final String? dartName;

  Map<String, Object?> toJson() => {
    'address': address,
    if (dartName != null) 'dartName': dartName,
  };
}

/// A `count` / `for_each` block unrolled into one resource per instance,
/// each with a `moved` entry carrying its state to the new address.
final class ExpandedItem {
  const ExpandedItem({
    required this.address,
    required this.isForEach,
    required this.instances,
  });

  /// The block as written: `google_pubsub_topic.orders`.
  final String address;

  /// True for `for_each`, false for `count`.
  final bool isForEach;

  final List<ExpandedInstanceItem> instances;

  Map<String, Object?> toJson() => {
    'address': address,
    'meta': isForEach ? 'for_each' : 'count',
    'instances': [for (final i in instances) i.toJson()],
  };
}

/// One instance of an [ExpandedItem].
final class ExpandedInstanceItem {
  const ExpandedInstanceItem({
    required this.key,
    required this.from,
    required this.to,
  });

  /// The instance key: an `int` index for `count`, a `String` for `for_each`.
  final Object key;

  /// The address the instance had: `google_pubsub_topic.orders[0]`,
  /// `google_pubsub_topic.orders["eu"]`.
  final String from;

  /// The address of the resource it became: `google_pubsub_topic.orders_0`.
  final String to;

  Map<String, Object?> toJson() => {'key': key, 'from': from, 'to': to};
}

/// A block that stays in Terraform, and why.
final class KeptItem {
  const KeptItem({required this.address, required this.reason});

  final String address;
  final String reason;

  Map<String, Object?> toJson() => {'address': address, 'reason': reason};
}

/// The report of one module's migration.
final class MigrationReport {
  const MigrationReport({
    required this.module,
    required this.stackClass,
    required this.migrated,
    required this.kept,
    required this.warnings,
    required this.packages,
    this.providers = const [],
    this.expanded = const [],
  });

  /// The module name (its directory, or the name the caller gave).
  final String module;

  /// The generated Stack class.
  final String stackClass;

  /// Blocks that became Dart, in emission order.
  final List<MigratedItem> migrated;

  /// Blocks left in Terraform, with the blocker that kept each one.
  final List<KeptItem> kept;

  /// Non-blocking notes: a dropped provider argument, a version constraint
  /// that differs from the package pin, an undeclared variable, ...
  final List<String> warnings;

  /// The TerraDart packages the Stack imports (`terradart_google`, ...).
  final List<String> packages;

  /// Provider local names the Stack registers (`google`, `time`, ...): their
  /// `required_providers` entries are the Stack's, never the sidecar's.
  final List<String> providers;

  /// `count` / `for_each` blocks unrolled into one resource per instance;
  /// their instances are listed in [migrated] under the new addresses.
  final List<ExpandedItem> expanded;

  /// True when nothing was left in Terraform.
  bool get isComplete => kept.isEmpty;

  /// Resource / data-source addresses that were migrated.
  Iterable<String> get migratedAddresses => migrated.map((m) => m.address);

  Map<String, Object?> toJson() => {
    'module': module,
    'stackClass': stackClass,
    'complete': isComplete,
    'migrated': [for (final m in migrated) m.toJson()],
    'kept': [for (final k in kept) k.toJson()],
    'warnings': warnings,
    'packages': packages,
    'providers': providers,
    'expanded': [for (final e in expanded) e.toJson()],
  };

  String renderText() {
    final b = StringBuffer()
      ..writeln('terradart-migrate: $module → $stackClass')
      ..writeln('  packages: ${packages.join(', ')}')
      ..writeln('  providers: ${providers.join(', ')}')
      ..writeln(
        '  migrated: ${migrated.length}, kept in Terraform: ${kept.length}',
      );
    if (expanded.isNotEmpty) {
      b.writeln();
      b.writeln('Unrolled (${expanded.length}):');
      for (final e in expanded) {
        b.writeln(
          '  ${e.address} (${e.isForEach ? 'for_each' : 'count'}): '
          '${e.instances.map((i) => '${i.from} → ${i.to}').join(', ')}',
        );
      }
    }
    if (kept.isNotEmpty) {
      b.writeln();
      b.writeln('Kept in Terraform (${kept.length}):');
      for (final k in kept) {
        b.writeln('  ${k.address}: ${k.reason}');
      }
    }
    if (warnings.isNotEmpty) {
      b.writeln();
      b.writeln('Warnings (${warnings.length}):');
      for (final w in warnings) {
        b.writeln('  $w');
      }
    }
    return b.toString();
  }
}

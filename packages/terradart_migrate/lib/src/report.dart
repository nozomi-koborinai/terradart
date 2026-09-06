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
  };

  String renderText() {
    final b = StringBuffer()
      ..writeln('terradart-migrate: $module → $stackClass')
      ..writeln('  packages: ${packages.join(', ')}')
      ..writeln(
        '  migrated: ${migrated.length}, kept in Terraform: ${kept.length}',
      );
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

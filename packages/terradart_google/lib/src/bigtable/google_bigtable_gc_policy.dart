// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigtable/google_bigtable_instance.dart' show GoogleBigtableInstance;
import '../bigtable/google_bigtable_table.dart' show GoogleBigtableTable;

/// Sensitive field paths for `google_bigtable_gc_policy`.
const Set<String> _googleBigtableGcPolicySensitive = <String>{};

/// GC rule variant for `google_bigtable_gc_policy`.
sealed class BigtableGcPolicyRule {
  const BigtableGcPolicyRule();

  /// Keep only cells younger than the given age.
  const factory BigtableGcPolicyRule.maxAge({
    TfArg<num>? days,
    TfArg<String>? duration,
  }) = BigtableGcPolicyMaxAge;

  /// Keep only the N most recent cell versions.
  const factory BigtableGcPolicyRule.maxVersion({required TfArg<num> number}) =
      BigtableGcPolicyMaxVersion;

  String get blockKey;
  Map<String, Object?> encode();
}

/// Keep only cells younger than the given age.
final class BigtableGcPolicyMaxAge extends BigtableGcPolicyRule {
  const BigtableGcPolicyMaxAge({this.days, this.duration});

  final TfArg<num>? days;
  final TfArg<String>? duration;

  @override
  String get blockKey => 'max_age';

  @override
  Map<String, Object?> encode() => {
    if (days != null) 'days': days!.toTfJson(),
    if (duration != null) 'duration': duration!.toTfJson(),
  };
}

/// Keep only the N most recent cell versions.
final class BigtableGcPolicyMaxVersion extends BigtableGcPolicyRule {
  const BigtableGcPolicyMaxVersion({required this.number});

  final TfArg<num> number;

  @override
  String get blockKey => 'max_version';

  @override
  Map<String, Object?> encode() => {'number': number.toTfJson()};
}

/// Factory wrapper for `google_bigtable_gc_policy`.
///
/// Garbage-collection policy for one column family on a Bigtable table.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [instanceName]: parent instance ID.
/// - [table]: table ID — pass `table.name`.
/// - [columnFamily]: column family name.
/// - [policy]: [BigtableGcPolicyMaxAge] or [BigtableGcPolicyMaxVersion].
///
/// Example (expire cells after 7 days):
/// ```dart
/// GoogleBigtableGcPolicy(
///   localName: 'cf1_max_age',
///   instanceName: instance.ref,
///   table: table.ref,
///   columnFamily: TfArg.literal('cf1'),
///   policy: BigtableGcPolicyMaxAge(days: TfArg.literal(7)),
/// );
/// ```
final class GoogleBigtableGcPolicy extends Resource {
  static const String tfType = 'google_bigtable_gc_policy';

  GoogleBigtableGcPolicy({
    required super.localName,
    required RefTo<GoogleBigtableInstance> instanceName,
    required RefTo<GoogleBigtableTable> table,
    required TfArg<String> columnFamily,
    required BigtableGcPolicyRule policy,
    TfArg<String>? gcRules,
    TfArg<String>? mode,
    TfArg<bool>? ignoreWarnings,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName.encodeAs('name'),
           'table': table.encodeAs('name'),
           'column_family': columnFamily,
           policy.blockKey: TfArg.literal([policy.encode()]),
           'gc_rules': ?gcRules,
           'mode': ?mode,
           'ignore_warnings': ?ignoreWarnings,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableGcPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableGcPolicy>`.
  RefTo<GoogleBigtableGcPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `column_family` attribute.
  TfRef<String> get columnFamily =>
      TfRef.attribute<String>(this, 'column_family');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `gc_rules` attribute.
  TfRef<String> get gcRules => TfRef.attribute<String>(this, 'gc_rules');

  /// Reference to `ignore_warnings` attribute.
  TfRef<bool> get ignoreWarnings =>
      TfRef.attribute<bool>(this, 'ignore_warnings');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceName =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `table` attribute.
  TfRef<String> get table => TfRef.attribute<String>(this, 'table');
}

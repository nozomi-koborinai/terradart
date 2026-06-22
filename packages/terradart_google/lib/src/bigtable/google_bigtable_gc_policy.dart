// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigtable_gc_policy`.
const Set<String> _googleBigtableGcPolicySensitive = <String>{};

/// GC rule variant for `google_bigtable_gc_policy`.
sealed class BigtableGcPolicyRule {
  const BigtableGcPolicyRule();

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
/// - [table]: table ID — pass `TfArg.ref(table.nameRef)`.
/// - [columnFamily]: column family name.
/// - [policy]: [BigtableGcPolicyMaxAge] or [BigtableGcPolicyMaxVersion].
///
/// Example (expire cells after 7 days):
/// ```dart
/// GoogleBigtableGcPolicy(
///   localName: 'cf1_max_age',
///   instanceName: TfArg.ref(instance.nameRef),
///   table: TfArg.ref(table.nameRef),
///   columnFamily: TfArg.literal('cf1'),
///   policy: BigtableGcPolicyMaxAge(days: TfArg.literal(7)),
/// );
/// ```
final class GoogleBigtableGcPolicy extends Resource {
  static const String tfType = 'google_bigtable_gc_policy';

  GoogleBigtableGcPolicy({
    required super.localName,
    required TfArg<String> instanceName,
    required TfArg<String> table,
    required TfArg<String> columnFamily,
    required BigtableGcPolicyRule policy,
    TfArg<String>? gcRules,
    TfArg<String>? mode,
    TfArg<bool>? ignoreWarnings,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'table': table,
           'column_family': columnFamily,
           policy.blockKey: TfArg.literal([policy.encode()]),
           if (gcRules != null) 'gc_rules': gcRules,
           if (mode != null) 'mode': mode,
           if (ignoreWarnings != null) 'ignore_warnings': ignoreWarnings,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableGcPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

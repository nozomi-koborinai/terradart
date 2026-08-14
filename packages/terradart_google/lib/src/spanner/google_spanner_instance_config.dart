// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_instance_config`.
const Set<String> _googleSpannerInstanceConfigSensitive = <String>{};

/// Typed helper for the `replicas` block of
/// `google_spanner_instance_config` (derived from provider schema).
@immutable
final class SpannerInstanceConfigReplicas {
  const SpannerInstanceConfigReplicas({
    this.defaultLeaderLocation,
    this.location,
    this.type,
  });

  final TfArg<bool>? defaultLeaderLocation;

  final TfArg<String>? location;

  final TfArg<SpannerInstanceConfigReplicasType>? type;

  Map<String, Object?> encode() => {
    if (defaultLeaderLocation != null)
      'default_leader_location': defaultLeaderLocation!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SpannerInstanceConfigReplicasType implements TerraformEnum {
  readWrite('READ_WRITE'),
  readOnly('READ_ONLY'),
  witness('WITNESS');

  const SpannerInstanceConfigReplicasType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_spanner_instance_config`.
///
/// A possible configuration for a Cloud Spanner instance. Configurations define
/// the geographic placement of nodes and their replication.
///
/// Cloud Spanner **user-managed instance configuration** — replica
/// topology metadata cloned from a Google-managed [baseConfig].
/// Creating the config does not create a [GoogleSpannerInstance] and
/// does not reserve nodes or processing units.
///
/// [name] must start with `custom-`. The Terraform provider merges
/// [baseConfig] replicas automatically — pass only the extra optional
/// `READ_ONLY` replica (official recipe: `nam11` + `us-west1`).
///
/// Enable `spanner.googleapis.com` via [GoogleProjectService] before
/// apply. Set [deletionPolicy] to `DELETE` so destroy removes the
/// unused config. Do not attach a [GoogleSpannerInstance] unless you
/// intend to pay node / PU SKUs.
///
/// Example:
/// ```dart
/// GoogleSpannerInstanceConfig(
///   localName: 'custom_nam11',
///   name: TfArg.literal('custom-td-nam11-ro'),
///   displayName: TfArg.literal('TerraDart nam11 + us-west1 RO'),
///   baseConfig: TfArg.literal('nam11'),
///   replicas: [
///     SpannerInstanceConfigReplicas(
///       location: TfArg.literal('us-west1'),
///       type: TfArg.literal(SpannerInstanceConfigReplicasType.readOnly),
///       defaultLeaderLocation: TfArg.literal(false),
///     ),
///   ],
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleSpannerInstanceConfig extends Resource {
  static const String tfType = 'google_spanner_instance_config';

  GoogleSpannerInstanceConfig({
    required super.localName,
    TfArg<String>? name,
    required TfArg<String> displayName,
    TfArg<String>? baseConfig,
    required List<SpannerInstanceConfigReplicas> replicas,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           'display_name': displayName,
           if (baseConfig != null) 'base_config': baseConfig,
           'replicas': TfArg.literal([for (final e in replicas) e.encode()]),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerInstanceConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `config_type` attribute.
  TfRef<String> get configType => TfRef.attribute<String>(this, 'config_type');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_alloydb_instance`.
const Set<String> _googleAlloydbInstanceSensitive = <String>{};

/// `instance_type` — primary, read pool, or secondary.
enum AlloydbInstanceType implements TerraformEnum {
  primary('PRIMARY'),
  readPool('READ_POOL'),
  secondary('SECONDARY');

  const AlloydbInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `machine_config` nested block (max=1).
class AlloydbInstanceMachineConfig {
  const AlloydbInstanceMachineConfig({this.cpuCount, this.machineType});

  final TfArg<num>? cpuCount;
  final TfArg<String>? machineType;

  Map<String, Object?> toArgMap() => {
    if (cpuCount != null) 'cpu_count': cpuCount!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
  };
}

/// Factory wrapper for `google_alloydb_instance`.
///
/// AlloyDB instance — primary or read-pool node inside a
/// [GoogleAlloydbCluster].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [cluster]: parent cluster ID — `TfArg.ref(cluster.id)`.
/// - [instanceId]: short instance ID within the cluster.
/// - [instanceType]: [AlloydbInstanceType.primary] for the first node.
/// - [machineConfig]: CPU count (and optional machine type).
///
/// Example:
/// ```dart
/// GoogleAlloydbInstance(
///   localName: 'primary',
///   cluster: TfArg.ref(cluster.id),
///   instanceId: TfArg.literal('primary'),
///   instanceType: TfArg.literal(AlloydbInstanceType.primary),
///   machineConfig: AlloydbInstanceMachineConfig(
///     cpuCount: TfArg.literal(2),
///   ),
/// );
/// ```
final class GoogleAlloydbInstance extends Resource {
  static const String tfType = 'google_alloydb_instance';

  GoogleAlloydbInstance({
    required super.localName,
    required TfArg<String> cluster,
    required TfArg<String> instanceId,
    required TfArg<AlloydbInstanceType> instanceType,
    AlloydbInstanceMachineConfig? machineConfig,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster,
           'instance_id': instanceId,
           'instance_type': instanceType,
           if (machineConfig != null)
             'machine_config': TfArg.literal([machineConfig.toArgMap()]),
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAlloydbInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `outbound_public_ip_addresses` attribute.
  TfRef<List<String>> get outboundPublicIpAddresses =>
      TfRef.attribute<List<String>>(this, 'outbound_public_ip_addresses');

  /// Reference to `public_ip_address` attribute.
  TfRef<String> get publicIpAddress =>
      TfRef.attribute<String>(this, 'public_ip_address');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}

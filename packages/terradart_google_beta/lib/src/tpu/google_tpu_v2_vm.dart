// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tpu_v2_vm`.
const Set<String> _googleTpuV2VmSensitive = <String>{};

/// Typed helper for the `accelerator_config` block of
/// `google_tpu_v2_vm` (derived from provider schema).
@immutable
final class TpuV2VmAcceleratorConfig {
  const TpuV2VmAcceleratorConfig({required this.topology, required this.type});

  final TfArg<String> topology;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'topology': topology.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `data_disks` block of
/// `google_tpu_v2_vm` (derived from provider schema).
@immutable
final class TpuV2VmDataDisks {
  const TpuV2VmDataDisks({this.mode, required this.sourceDisk});

  final TfArg<TpuV2VmDataDisksMode>? mode;

  final TfArg<String> sourceDisk;

  Map<String, Object?> encode() => {
    if (mode != null) 'mode': mode!.toTfJson(),
    'source_disk': sourceDisk.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum TpuV2VmDataDisksMode implements TerraformEnum {
  readWrite('READ_WRITE'),
  readOnly('READ_ONLY');

  const TpuV2VmDataDisksMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `network_config` block of
/// `google_tpu_v2_vm` (derived from provider schema).
@immutable
final class TpuV2VmNetworkConfig {
  const TpuV2VmNetworkConfig({
    this.canIpForward,
    this.enableExternalIps,
    this.network,
    this.queueCount,
    this.subnetwork,
  });

  final TfArg<bool>? canIpForward;

  final TfArg<bool>? enableExternalIps;

  final TfArg<String>? network;

  final TfArg<num>? queueCount;

  final TfArg<String>? subnetwork;

  Map<String, Object?> encode() => {
    if (canIpForward != null) 'can_ip_forward': canIpForward!.toTfJson(),
    if (enableExternalIps != null)
      'enable_external_ips': enableExternalIps!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (queueCount != null) 'queue_count': queueCount!.toTfJson(),
    if (subnetwork != null) 'subnetwork': subnetwork!.toTfJson(),
  };
}

/// Typed helper for the `network_configs` block of
/// `google_tpu_v2_vm` (derived from provider schema).
@immutable
final class TpuV2VmNetworkConfigs {
  const TpuV2VmNetworkConfigs({
    this.canIpForward,
    this.enableExternalIps,
    this.network,
    this.queueCount,
    this.subnetwork,
  });

  final TfArg<bool>? canIpForward;

  final TfArg<bool>? enableExternalIps;

  final TfArg<String>? network;

  final TfArg<num>? queueCount;

  final TfArg<String>? subnetwork;

  Map<String, Object?> encode() => {
    if (canIpForward != null) 'can_ip_forward': canIpForward!.toTfJson(),
    if (enableExternalIps != null)
      'enable_external_ips': enableExternalIps!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (queueCount != null) 'queue_count': queueCount!.toTfJson(),
    if (subnetwork != null) 'subnetwork': subnetwork!.toTfJson(),
  };
}

/// Typed helper for the `scheduling_config` block of
/// `google_tpu_v2_vm` (derived from provider schema).
@immutable
final class TpuV2VmSchedulingConfig {
  const TpuV2VmSchedulingConfig({this.preemptible, this.reserved, this.spot});

  final TfArg<bool>? preemptible;

  final TfArg<bool>? reserved;

  final TfArg<bool>? spot;

  Map<String, Object?> encode() => {
    if (preemptible != null) 'preemptible': preemptible!.toTfJson(),
    if (reserved != null) 'reserved': reserved!.toTfJson(),
    if (spot != null) 'spot': spot!.toTfJson(),
  };
}

/// Typed helper for the `service_account` block of
/// `google_tpu_v2_vm` (derived from provider schema).
@immutable
final class TpuV2VmServiceAccount {
  const TpuV2VmServiceAccount({this.email, this.scope});

  final TfArg<String>? email;

  final TfArg<List<Object?>>? scope;

  Map<String, Object?> encode() => {
    if (email != null) 'email': email!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
  };
}

/// Typed helper for the `shielded_instance_config` block of
/// `google_tpu_v2_vm` (derived from provider schema).
@immutable
final class TpuV2VmShieldedInstanceConfig {
  const TpuV2VmShieldedInstanceConfig({required this.enableSecureBoot});

  final TfArg<bool> enableSecureBoot;

  Map<String, Object?> encode() => {
    'enable_secure_boot': enableSecureBoot.toTfJson(),
  };
}

/// Factory wrapper for `google_tpu_v2_vm`.
///
/// A Cloud TPU VM instance.
final class GoogleTpuV2Vm extends Resource {
  static const String tfType = 'google_tpu_v2_vm';

  GoogleTpuV2Vm({
    required super.localName,
    TfArg<String>? acceleratorType,
    TfArg<String>? cidrBlock,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> runtimeVersion,
    TfArg<List<String>>? tags,
    TfArg<String>? zone,
    TpuV2VmAcceleratorConfig? acceleratorConfig,
    List<TpuV2VmDataDisks>? dataDisks,
    TpuV2VmNetworkConfig? networkConfig,
    List<TpuV2VmNetworkConfigs>? networkConfigs,
    TpuV2VmSchedulingConfig? schedulingConfig,
    TpuV2VmServiceAccount? serviceAccount,
    TpuV2VmShieldedInstanceConfig? shieldedInstanceConfig,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (acceleratorType != null) 'accelerator_type': acceleratorType,
           if (cidrBlock != null) 'cidr_block': cidrBlock,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (metadata != null) 'metadata': metadata,
           'name': name,
           if (project != null) 'project': project,
           'runtime_version': runtimeVersion,
           if (tags != null) 'tags': tags,
           if (zone != null) 'zone': zone,
           if (acceleratorConfig != null)
             'accelerator_config': TfArg.literal(acceleratorConfig.encode()),
           if (dataDisks != null)
             'data_disks': TfArg.literal([
               for (final e in dataDisks) e.encode(),
             ]),
           if (networkConfig != null)
             'network_config': TfArg.literal(networkConfig.encode()),
           if (networkConfigs != null)
             'network_configs': TfArg.literal([
               for (final e in networkConfigs) e.encode(),
             ]),
           if (schedulingConfig != null)
             'scheduling_config': TfArg.literal(schedulingConfig.encode()),
           if (serviceAccount != null)
             'service_account': TfArg.literal(serviceAccount.encode()),
           if (shieldedInstanceConfig != null)
             'shielded_instance_config': TfArg.literal(
               shieldedInstanceConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTpuV2VmSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_version` attribute.
  TfRef<String> get apiVersion => TfRef.attribute<String>(this, 'api_version');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `health` attribute.
  TfRef<String> get health => TfRef.attribute<String>(this, 'health');

  /// Reference to `health_description` attribute.
  TfRef<String> get healthDescription =>
      TfRef.attribute<String>(this, 'health_description');

  /// Reference to `multislice_node` attribute.
  TfRef<bool> get multisliceNode =>
      TfRef.attribute<bool>(this, 'multislice_node');

  /// Reference to `network_endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get networkEndpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_endpoints');

  /// Reference to `queued_resource` attribute.
  TfRef<String> get queuedResource =>
      TfRef.attribute<String>(this, 'queued_resource');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `symptoms` attribute.
  TfRef<List<Map<String, Object?>>> get symptoms =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'symptoms');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}

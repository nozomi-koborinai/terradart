// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show GoogleComputeNetwork, GoogleComputeSubnetwork, GoogleServiceAccount;

/// Sensitive field paths for `google_tpu_v2_vm`.
const Set<String> _googleTpuV2VmSensitive = <String>{};

/// At most one of `accelerator_type`, `accelerator_config` on `google_tpu_v2_vm`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.acceleratorType(...)`.
sealed class TpuV2VmAccelerator {
  const TpuV2VmAccelerator();

  /// Sets `accelerator_type`.
  const factory TpuV2VmAccelerator.acceleratorType(
    TfArg<String> acceleratorType,
  ) = TpuV2VmAcceleratorType;

  /// Sets `accelerator_config`.
  const factory TpuV2VmAccelerator.acceleratorConfig(
    TpuV2VmAcceleratorConfig acceleratorConfig,
  ) = TpuV2VmAcceleratorConfigChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [TpuV2VmAccelerator.acceleratorType] choice: sets `accelerator_type`.
final class TpuV2VmAcceleratorType extends TpuV2VmAccelerator {
  const TpuV2VmAcceleratorType(this.acceleratorType);

  final TfArg<String> acceleratorType;

  @override
  String get blockKey => 'accelerator_type';

  @override
  Map<String, Object?> encode() => {
    'accelerator_type': acceleratorType.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'accelerator_type': acceleratorType,
  };
}

/// The [TpuV2VmAccelerator.acceleratorConfig] choice: sets `accelerator_config`.
final class TpuV2VmAcceleratorConfigChoice extends TpuV2VmAccelerator {
  const TpuV2VmAcceleratorConfigChoice(this.acceleratorConfig);

  final TpuV2VmAcceleratorConfig acceleratorConfig;

  @override
  String get blockKey => 'accelerator_config';

  @override
  Map<String, Object?> encode() => {
    'accelerator_config': acceleratorConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'accelerator_config': TfArg.literal(acceleratorConfig.encode()),
  };
}

/// At most one of `network_config`, `network_configs` on `google_tpu_v2_vm`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.networkConfig(...)`.
sealed class TpuV2VmNetwork {
  const TpuV2VmNetwork();

  /// Sets `network_config`.
  const factory TpuV2VmNetwork.networkConfig(
    TpuV2VmNetworkConfig networkConfig,
  ) = TpuV2VmNetworkConfigChoice;

  /// Sets `network_configs`.
  const factory TpuV2VmNetwork.networkConfigs(
    List<TpuV2VmNetworkConfigs> networkConfigs,
  ) = TpuV2VmNetworkConfigsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [TpuV2VmNetwork.networkConfig] choice: sets `network_config`.
final class TpuV2VmNetworkConfigChoice extends TpuV2VmNetwork {
  const TpuV2VmNetworkConfigChoice(this.networkConfig);

  final TpuV2VmNetworkConfig networkConfig;

  @override
  String get blockKey => 'network_config';

  @override
  Map<String, Object?> encode() => {'network_config': networkConfig.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'network_config': TfArg.literal(networkConfig.encode()),
  };
}

/// The [TpuV2VmNetwork.networkConfigs] choice: sets `network_configs`.
final class TpuV2VmNetworkConfigsChoice extends TpuV2VmNetwork {
  const TpuV2VmNetworkConfigsChoice(this.networkConfigs);

  final List<TpuV2VmNetworkConfigs> networkConfigs;

  @override
  String get blockKey => 'network_configs';

  @override
  Map<String, Object?> encode() => {
    'network_configs': [for (final e in networkConfigs) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'network_configs': TfArg.literal([
      for (final e in networkConfigs) e.encode(),
    ]),
  };
}

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
    'mode': ?mode?.toTfJson(),
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

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<num>? queueCount;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  Map<String, Object?> encode() => {
    'can_ip_forward': ?canIpForward?.toTfJson(),
    'enable_external_ips': ?enableExternalIps?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'queue_count': ?queueCount?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
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

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<num>? queueCount;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  Map<String, Object?> encode() => {
    'can_ip_forward': ?canIpForward?.toTfJson(),
    'enable_external_ips': ?enableExternalIps?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'queue_count': ?queueCount?.toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
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
    'preemptible': ?preemptible?.toTfJson(),
    'reserved': ?reserved?.toTfJson(),
    'spot': ?spot?.toTfJson(),
  };
}

/// Typed helper for the `service_account` block of
/// `google_tpu_v2_vm` (derived from provider schema).
@immutable
final class TpuV2VmServiceAccount {
  const TpuV2VmServiceAccount({this.email, this.scope});

  final RefTo<GoogleServiceAccount>? email;

  final TfArg<List<Object?>>? scope;

  Map<String, Object?> encode() => {
    'email': ?email?.encodeAs('email').toTfJson(),
    'scope': ?scope?.toTfJson(),
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
    TpuV2VmAccelerator? accelerator,
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
    List<TpuV2VmDataDisks>? dataDisks,
    TpuV2VmNetwork? network,
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
           ...?accelerator?.argMap,
           'cidr_block': ?cidrBlock,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'labels': ?labels,
           'metadata': ?metadata,
           'name': name,
           'project': ?project,
           'runtime_version': runtimeVersion,
           'tags': ?tags,
           'zone': ?zone,
           if (dataDisks != null)
             'data_disks': TfArg.literal([
               for (final e in dataDisks) e.encode(),
             ]),
           ...?network?.argMap,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTpuV2Vm>`.
  RefTo<GoogleTpuV2Vm> get ref => RefTo.of(this);

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

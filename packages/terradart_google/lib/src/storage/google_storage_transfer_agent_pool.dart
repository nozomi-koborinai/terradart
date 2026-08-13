// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_transfer_agent_pool`.
const Set<String> _googleStorageTransferAgentPoolSensitive = <String>{};

/// Storage Transfer Agent Pool enum for `state`.
enum StorageTransferAgentPoolState implements TerraformEnum {
  creating('CREATING'),
  created('CREATED'),
  deleting('DELETING');

  const StorageTransferAgentPoolState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `bandwidth_limit` block of
/// `google_storage_transfer_agent_pool` (derived from provider schema).
@immutable
final class StorageTransferAgentPoolBandwidthLimit {
  const StorageTransferAgentPoolBandwidthLimit({required this.limitMbps});

  final TfArg<String> limitMbps;

  Map<String, Object?> encode() => {'limit_mbps': limitMbps.toTfJson()};
}

/// Factory wrapper for `google_storage_transfer_agent_pool`.
///
/// Represents an On-Premises Agent pool.
///
/// Storage Transfer Service **on-premises agent pool** — named pool
/// metadata for POSIX agents. Creating a pool does not install agents
/// or move bytes.
///
/// **Cost:** gcp-cost: Transfer Service `D961-88BE-4D2D` On-Premises data
/// moved `DC3D-7464-4764` **$0.0125/GiBy**. billing-behavior: the pool
/// record is free metadata; data-moved SKUs fire only when agents copy
/// POSIX bytes. Smoke creates an empty pool (no agents).
///
/// Example:
/// ```dart
/// GoogleStorageTransferAgentPool(
///   localName: 'pool',
///   name: TfArg.literal('terradart-sts-pool'),
///   displayName: TfArg.literal('TerraDart smoke agent pool'),
///   bandwidthLimit: StorageTransferAgentPoolBandwidthLimit(
///     limitMbps: TfArg.literal('120'),
///   ),
/// );
/// ```
final class GoogleStorageTransferAgentPool extends Resource {
  static const String tfType = 'google_storage_transfer_agent_pool';

  GoogleStorageTransferAgentPool({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? displayName,
    StorageTransferAgentPoolBandwidthLimit? bandwidthLimit,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (displayName != null) 'display_name': displayName,
           if (bandwidthLimit != null)
             'bandwidth_limit': TfArg.literal(bandwidthLimit.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageTransferAgentPoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

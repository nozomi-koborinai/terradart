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
///   'pool',
///   name: TfArg.literal('terradart-sts-pool'),
///   displayName: TfArg.literal('TerraDart smoke agent pool'),
///   bandwidthLimit: StorageTransferAgentPoolBandwidthLimit(
///     limitMbps: TfArg.literal('120'),
///   ),
/// );
/// ```
final class GoogleStorageTransferAgentPool extends Resource {
  static const String tfType = 'google_storage_transfer_agent_pool';

  GoogleStorageTransferAgentPool(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? displayName,
    StorageTransferAgentPoolBandwidthLimit? bandwidthLimit,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'display_name': ?displayName,
           if (bandwidthLimit != null)
             'bandwidth_limit': TfArg.literal(bandwidthLimit.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageTransferAgentPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageTransferAgentPool>`.
  RefTo<GoogleStorageTransferAgentPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

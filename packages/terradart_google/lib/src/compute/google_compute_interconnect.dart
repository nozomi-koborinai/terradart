// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_interconnect`.
const Set<String> _googleComputeInterconnectSensitive = <String>{};

/// Compute Interconnect Interconnect enum for `interconnect_type`.
enum ComputeInterconnectInterconnectType implements TerraformEnum {
  dedicated('DEDICATED'),
  partner('PARTNER'),
  itPrivate('IT_PRIVATE');

  const ComputeInterconnectInterconnectType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Interconnect Link enum for `link_type`.
enum ComputeInterconnectLinkType implements TerraformEnum {
  linkTypeEthernet10gLr('LINK_TYPE_ETHERNET_10G_LR'),
  linkTypeEthernet100gLr('LINK_TYPE_ETHERNET_100G_LR'),
  linkTypeEthernet400gLr4('LINK_TYPE_ETHERNET_400G_LR4');

  const ComputeInterconnectLinkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Interconnect Operational enum for `operational_status`.
enum ComputeInterconnectOperationalStatus implements TerraformEnum {
  osActive('OS_ACTIVE'),
  osUnprovisioned('OS_UNPROVISIONED'),
  osUnderMaintenance('OS_UNDER_MAINTENANCE');

  const ComputeInterconnectOperationalStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Interconnect enum for `state`.
enum ComputeInterconnectState implements TerraformEnum {
  active('ACTIVE'),
  unprovisioned('UNPROVISIONED'),
  underMaintenance('UNDER_MAINTENANCE');

  const ComputeInterconnectState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `macsec` block of
/// `google_compute_interconnect` (derived from provider schema).
@immutable
final class ComputeInterconnectMacsec {
  const ComputeInterconnectMacsec({this.failOpen, required this.preSharedKeys});

  final TfArg<bool>? failOpen;

  final List<ComputeInterconnectMacsecPreSharedKeys> preSharedKeys;

  Map<String, Object?> encode() => {
    'fail_open': ?failOpen?.toTfJson(),
    'pre_shared_keys': [for (final e in preSharedKeys) e.encode()],
  };
}

/// Typed helper for the `macsec.pre_shared_keys` block of
/// `google_compute_interconnect` (derived from provider schema).
@immutable
final class ComputeInterconnectMacsecPreSharedKeys {
  const ComputeInterconnectMacsecPreSharedKeys({
    this.failOpen,
    required this.name,
    this.startTime,
  });

  final TfArg<bool>? failOpen;

  final TfArg<String> name;

  final TfArg<String>? startTime;

  Map<String, Object?> encode() => {
    'fail_open': ?failOpen?.toTfJson(),
    'name': name.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_interconnect` (derived from provider schema).
@immutable
final class ComputeInterconnectParams {
  const ComputeInterconnectParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_interconnect`.
///
/// Represents an Interconnect resource. The Interconnect resource is a
/// dedicated connection between Google's network and your on-premises network.
final class GoogleComputeInterconnect extends Resource {
  static const String tfType = 'google_compute_interconnect';

  GoogleComputeInterconnect({
    required super.localName,
    required TfArg<String> name,
    required TfArg<ComputeInterconnectInterconnectType> interconnectType,
    required TfArg<ComputeInterconnectLinkType> linkType,
    required TfArg<String> location,
    required TfArg<num> requestedLinkCount,
    TfArg<String>? customerName,
    TfArg<String>? description,
    TfArg<bool>? adminEnabled,
    TfArg<bool>? macsecEnabled,
    TfArg<String>? nocContactEmail,
    TfArg<String>? remoteLocation,
    TfArg<List<String>>? requestedFeatures,
    TfArg<Map<String, String>>? labels,
    ComputeInterconnectMacsec? macsec,
    ComputeInterconnectParams? params,
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
           'interconnect_type': interconnectType,
           'link_type': linkType,
           'location': location,
           'requested_link_count': requestedLinkCount,
           'customer_name': ?customerName,
           'description': ?description,
           'admin_enabled': ?adminEnabled,
           'macsec_enabled': ?macsecEnabled,
           'noc_contact_email': ?nocContactEmail,
           'remote_location': ?remoteLocation,
           'requested_features': ?requestedFeatures,
           'labels': ?labels,
           if (macsec != null) 'macsec': TfArg.literal(macsec.encode()),
           if (params != null) 'params': TfArg.literal(params.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInterconnectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInterconnect>`.
  RefTo<GoogleComputeInterconnect> get ref => RefTo.of(this);

  /// Reference to `available_features` attribute.
  TfRef<List<String>> get availableFeatures =>
      TfRef.attribute<List<String>>(this, 'available_features');

  /// Reference to `circuit_infos` attribute.
  TfRef<List<Map<String, Object?>>> get circuitInfos =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'circuit_infos');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_location` attribute.
  TfRef<String> get effectiveLocation =>
      TfRef.attribute<String>(this, 'effective_location');

  /// Reference to `expected_outages` attribute.
  TfRef<List<Map<String, Object?>>> get expectedOutages =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'expected_outages');

  /// Reference to `google_ip_address` attribute.
  TfRef<String> get googleIpAddress =>
      TfRef.attribute<String>(this, 'google_ip_address');

  /// Reference to `google_reference_id` attribute.
  TfRef<String> get googleReferenceId =>
      TfRef.attribute<String>(this, 'google_reference_id');

  /// Reference to `interconnect_attachments` attribute.
  TfRef<List<String>> get interconnectAttachments =>
      TfRef.attribute<List<String>>(this, 'interconnect_attachments');

  /// Reference to `interconnect_groups` attribute.
  TfRef<List<String>> get interconnectGroups =>
      TfRef.attribute<List<String>>(this, 'interconnect_groups');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `operational_status` attribute.
  TfRef<String> get operationalStatus =>
      TfRef.attribute<String>(this, 'operational_status');

  /// Reference to `peer_ip_address` attribute.
  TfRef<String> get peerIpAddress =>
      TfRef.attribute<String>(this, 'peer_ip_address');

  /// Reference to `provisioned_link_count` attribute.
  TfRef<num> get provisionedLinkCount =>
      TfRef.attribute<num>(this, 'provisioned_link_count');

  /// Reference to `satisfies_pzs` attribute.
  TfRef<bool> get satisfiesPzs => TfRef.attribute<bool>(this, 'satisfies_pzs');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `wire_groups` attribute.
  TfRef<List<String>> get wireGroups =>
      TfRef.attribute<List<String>>(this, 'wire_groups');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

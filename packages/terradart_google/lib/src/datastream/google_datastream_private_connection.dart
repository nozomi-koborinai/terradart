// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_datastream_private_connection`.
const Set<String> _googleDatastreamPrivateConnectionSensitive = <String>{};

/// Exactly one of `vpc_peering_config`, `psc_interface_config` on `google_datastream_private_connection`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.vpcPeeringConfig(...)`.
sealed class DatastreamPrivateConnectionConnectivity {
  const DatastreamPrivateConnectionConnectivity();

  /// Sets `vpc_peering_config`.
  const factory DatastreamPrivateConnectionConnectivity.vpcPeeringConfig(
    DatastreamPrivateConnectionVpcPeeringConfig vpcPeeringConfig,
  ) = DatastreamPrivateConnectionConnectivityVpcPeeringConfig;

  /// Sets `psc_interface_config`.
  const factory DatastreamPrivateConnectionConnectivity.pscInterfaceConfig(
    DatastreamPrivateConnectionPscInterfaceConfig pscInterfaceConfig,
  ) = DatastreamPrivateConnectionConnectivityPscInterfaceConfig;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DatastreamPrivateConnectionConnectivity.vpcPeeringConfig] choice: sets `vpc_peering_config`.
final class DatastreamPrivateConnectionConnectivityVpcPeeringConfig
    extends DatastreamPrivateConnectionConnectivity {
  const DatastreamPrivateConnectionConnectivityVpcPeeringConfig(
    this.vpcPeeringConfig,
  );

  final DatastreamPrivateConnectionVpcPeeringConfig vpcPeeringConfig;

  @internal
  @override
  String get blockKey => 'vpc_peering_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'vpc_peering_config': vpcPeeringConfig.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'vpc_peering_config': TfArg.literal(vpcPeeringConfig.encode()),
  };
}

/// The [DatastreamPrivateConnectionConnectivity.pscInterfaceConfig] choice: sets `psc_interface_config`.
final class DatastreamPrivateConnectionConnectivityPscInterfaceConfig
    extends DatastreamPrivateConnectionConnectivity {
  const DatastreamPrivateConnectionConnectivityPscInterfaceConfig(
    this.pscInterfaceConfig,
  );

  final DatastreamPrivateConnectionPscInterfaceConfig pscInterfaceConfig;

  @internal
  @override
  String get blockKey => 'psc_interface_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'psc_interface_config': pscInterfaceConfig.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'psc_interface_config': TfArg.literal(pscInterfaceConfig.encode()),
  };
}

/// Typed helper for the `psc_interface_config` block of
/// `google_datastream_private_connection` (derived from provider schema).
@immutable
final class DatastreamPrivateConnectionPscInterfaceConfig {
  const DatastreamPrivateConnectionPscInterfaceConfig({
    required this.networkAttachment,
  });

  final TfArg<String> networkAttachment;

  @internal
  Map<String, Object?> encode() => {
    'network_attachment': networkAttachment.toTfJson(),
  };
}

/// Typed helper for the `vpc_peering_config` block of
/// `google_datastream_private_connection` (derived from provider schema).
@immutable
final class DatastreamPrivateConnectionVpcPeeringConfig {
  const DatastreamPrivateConnectionVpcPeeringConfig({
    required this.subnet,
    required this.vpc,
  });

  final TfArg<String> subnet;

  final TfArg<String> vpc;

  @internal
  Map<String, Object?> encode() => {
    'subnet': subnet.toTfJson(),
    'vpc': vpc.toTfJson(),
  };
}

/// Factory wrapper for `google_datastream_private_connection`.
///
/// The PrivateConnection resource is used to establish private connectivity
/// between Datastream and a customer's network.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDatastreamPrivateConnection extends Resource {
  static const String tfType = 'google_datastream_private_connection';

  GoogleDatastreamPrivateConnection(
    super.localName, {
    TfArg<bool>? createWithoutValidation,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> privateConnectionId,
    TfArg<String>? project,
    required DatastreamPrivateConnectionConnectivity connectivity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'create_without_validation': ?createWithoutValidation,
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'labels': ?labels,
           'location': location,
           'private_connection_id': privateConnectionId,
           'project': ?project,
           ...connectivity.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDatastreamPrivateConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDatastreamPrivateConnection>`.
  RefTo<GoogleDatastreamPrivateConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `error` attribute.
  TfRef<List<Map<String, Object?>>> get error =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'error');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `create_without_validation` attribute.
  TfRef<bool> get createWithoutValidation =>
      TfRef.attribute<bool>(this, 'create_without_validation');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_connection_id` attribute.
  TfRef<String> get privateConnectionId =>
      TfRef.attribute<String>(this, 'private_connection_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

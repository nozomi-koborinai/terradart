// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_memorystore_instance_desired_user_created_endpoints`.
const Set<String>
_googleMemorystoreInstanceDesiredUserCreatedEndpointsSensitive = <String>{};

/// Typed helper for the `desired_user_created_endpoints` block of
/// `google_memorystore_instance_desired_user_created_endpoints` (derived from provider schema).
@immutable
final class MemorystoreInstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoints {
  const MemorystoreInstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoints({
    this.connections,
  });

  final List<
    MemorystoreInstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointsConnections
  >?
  connections;

  Map<String, Object?> encode() => {
    if (connections != null)
      'connections': [for (final e in connections!) e.encode()],
  };
}

/// Typed helper for the `desired_user_created_endpoints.connections` block of
/// `google_memorystore_instance_desired_user_created_endpoints` (derived from provider schema).
@immutable
final class MemorystoreInstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointsConnections {
  const MemorystoreInstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointsConnections({
    this.pscConnection,
  });

  final MemorystoreInstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointsConnectionsPscConnection?
  pscConnection;

  Map<String, Object?> encode() => {
    if (pscConnection != null) 'psc_connection': pscConnection!.encode(),
  };
}

/// Typed helper for the `desired_user_created_endpoints.connections.psc_connection` block of
/// `google_memorystore_instance_desired_user_created_endpoints` (derived from provider schema).
@immutable
final class MemorystoreInstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointsConnectionsPscConnection {
  const MemorystoreInstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointsConnectionsPscConnection({
    required this.forwardingRule,
    required this.ipAddress,
    required this.network,
    this.projectId,
    required this.pscConnectionId,
    required this.serviceAttachment,
  });

  final TfArg<String> forwardingRule;

  final TfArg<String> ipAddress;

  final TfArg<String> network;

  final TfArg<String>? projectId;

  final TfArg<String> pscConnectionId;

  final TfArg<String> serviceAttachment;

  Map<String, Object?> encode() => {
    'forwarding_rule': forwardingRule.toTfJson(),
    'ip_address': ipAddress.toTfJson(),
    'network': network.toTfJson(),
    if (projectId != null) 'project_id': projectId!.toTfJson(),
    'psc_connection_id': pscConnectionId.toTfJson(),
    'service_attachment': serviceAttachment.toTfJson(),
  };
}

/// Factory wrapper for `google_memorystore_instance_desired_user_created_endpoints`.
///
/// Manages user created connections for Memorystore instance
///
/// Memorystore for Valkey **user-created endpoints** — PSC connections
/// you attach to an existing [GoogleMemorystoreInstance].
///
/// **Cost:** no separate Cloud Billing Catalog SKU under Memorystore
/// `A2B5-E0F1-B0F3` (node/backup/AOF SKUs only). Connection metadata
/// rides on the parent instance's node-hour charges.
///
/// Deferred with the never_apply parent instance (no apply-smoke
/// quickstart). Enable `memorystore.googleapis.com` via
/// [GoogleProjectService] before apply.
final class GoogleMemorystoreInstanceDesiredUserCreatedEndpoints
    extends Resource {
  static const String tfType =
      'google_memorystore_instance_desired_user_created_endpoints';

  GoogleMemorystoreInstanceDesiredUserCreatedEndpoints({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> region,
    List<
      MemorystoreInstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoints
    >?
    desiredUserCreatedEndpoints,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': region,
           if (desiredUserCreatedEndpoints != null)
             'desired_user_created_endpoints': TfArg.literal([
               for (final e in desiredUserCreatedEndpoints) e.encode(),
             ]),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMemorystoreInstanceDesiredUserCreatedEndpointsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}

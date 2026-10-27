// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_signalr_service_network_acl`.
const Set<String> _azurermSignalrServiceNetworkAclSensitive = <String>{};

/// Signalr Service Network Acl Default enum for `default_action`.
extension type const SignalrServiceNetworkAclDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  SignalrServiceNetworkAclDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  SignalrServiceNetworkAclDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const SignalrServiceNetworkAclDefaultAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = SignalrServiceNetworkAclDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = SignalrServiceNetworkAclDefaultAction._(
    TfArgLiteral('Deny'),
  );

  static const List<SignalrServiceNetworkAclDefaultAction> values = [
    allow,
    deny,
  ];
}

/// Typed helper for the `private_endpoint` block of
/// `azurerm_signalr_service_network_acl` (derived from provider schema).
@immutable
final class SignalrServiceNetworkAclPrivateEndpoint {
  const SignalrServiceNetworkAclPrivateEndpoint({
    this.allowedRequestTypes,
    this.deniedRequestTypes,
    required this.id,
  });

  final List<SignalrServiceNetworkAclAllowedRequestTypes>? allowedRequestTypes;

  final List<SignalrServiceNetworkAclDeniedRequestTypes>? deniedRequestTypes;

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {
    if (allowedRequestTypes != null)
      'allowed_request_types': [
        for (final e in allowedRequestTypes!) e.toTfJson(),
      ],
    if (deniedRequestTypes != null)
      'denied_request_types': [
        for (final e in deniedRequestTypes!) e.toTfJson(),
      ],
    'id': id.toTfJson(),
  };
}

/// `allowed_request_types` — derived from the provider schema description.
extension type const SignalrServiceNetworkAclAllowedRequestTypes._(
  TfArg<String> _
) implements TfArg<String> {
  SignalrServiceNetworkAclAllowedRequestTypes.variable(String name)
    : this._(TfArg.variable(name));
  SignalrServiceNetworkAclAllowedRequestTypes.expression(String template)
    : this._(TfArg.expression(template));
  const SignalrServiceNetworkAclAllowedRequestTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const clientconnection = SignalrServiceNetworkAclAllowedRequestTypes._(
    TfArgLiteral('ClientConnection'),
  );
  static const restapi = SignalrServiceNetworkAclAllowedRequestTypes._(
    TfArgLiteral('RESTAPI'),
  );
  static const serverconnection = SignalrServiceNetworkAclAllowedRequestTypes._(
    TfArgLiteral('ServerConnection'),
  );
  static const trace = SignalrServiceNetworkAclAllowedRequestTypes._(
    TfArgLiteral('Trace'),
  );

  static const List<SignalrServiceNetworkAclAllowedRequestTypes> values = [
    clientconnection,
    restapi,
    serverconnection,
    trace,
  ];
}

/// `denied_request_types` — derived from the provider schema description.
extension type const SignalrServiceNetworkAclDeniedRequestTypes._(
  TfArg<String> _
) implements TfArg<String> {
  SignalrServiceNetworkAclDeniedRequestTypes.variable(String name)
    : this._(TfArg.variable(name));
  SignalrServiceNetworkAclDeniedRequestTypes.expression(String template)
    : this._(TfArg.expression(template));
  const SignalrServiceNetworkAclDeniedRequestTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const clientconnection = SignalrServiceNetworkAclDeniedRequestTypes._(
    TfArgLiteral('ClientConnection'),
  );
  static const restapi = SignalrServiceNetworkAclDeniedRequestTypes._(
    TfArgLiteral('RESTAPI'),
  );
  static const serverconnection = SignalrServiceNetworkAclDeniedRequestTypes._(
    TfArgLiteral('ServerConnection'),
  );
  static const trace = SignalrServiceNetworkAclDeniedRequestTypes._(
    TfArgLiteral('Trace'),
  );

  static const List<SignalrServiceNetworkAclDeniedRequestTypes> values = [
    clientconnection,
    restapi,
    serverconnection,
    trace,
  ];
}

/// Typed helper for the `public_network` block of
/// `azurerm_signalr_service_network_acl` (derived from provider schema).
@immutable
final class SignalrServiceNetworkAclPublicNetwork {
  const SignalrServiceNetworkAclPublicNetwork({this.requestTypes});

  final SignalrServiceNetworkAclPublicNetworkRequestTypes? requestTypes;

  @internal
  Map<String, Object?> encode() => {...?requestTypes?.encode()};
}

/// At most one of `allowed_request_types`, `denied_request_types` on the `public_network` block of `azurerm_signalr_service_network_acl`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.allowedRequestTypes(...)`.
sealed class SignalrServiceNetworkAclPublicNetworkRequestTypes {
  const SignalrServiceNetworkAclPublicNetworkRequestTypes();

  /// Sets `allowed_request_types`.
  const factory SignalrServiceNetworkAclPublicNetworkRequestTypes.allowedRequestTypes(
    List<SignalrServiceNetworkAclAllowedRequestTypes> allowedRequestTypes,
  ) = SignalrServiceNetworkAclPublicNetworkAllowedRequestTypes;

  /// Sets `denied_request_types`.
  const factory SignalrServiceNetworkAclPublicNetworkRequestTypes.deniedRequestTypes(
    List<SignalrServiceNetworkAclDeniedRequestTypes> deniedRequestTypes,
  ) = SignalrServiceNetworkAclPublicNetworkDeniedRequestTypes;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SignalrServiceNetworkAclPublicNetworkRequestTypes.allowedRequestTypes] choice: sets `allowed_request_types`.
final class SignalrServiceNetworkAclPublicNetworkAllowedRequestTypes
    extends SignalrServiceNetworkAclPublicNetworkRequestTypes {
  const SignalrServiceNetworkAclPublicNetworkAllowedRequestTypes(
    this.allowedRequestTypes,
  );

  final List<SignalrServiceNetworkAclAllowedRequestTypes> allowedRequestTypes;

  @internal
  @override
  String get blockKey => 'allowed_request_types';

  @internal
  @override
  Map<String, Object?> encode() => {
    'allowed_request_types': [
      for (final e in allowedRequestTypes) e.toTfJson(),
    ],
  };
}

/// The [SignalrServiceNetworkAclPublicNetworkRequestTypes.deniedRequestTypes] choice: sets `denied_request_types`.
final class SignalrServiceNetworkAclPublicNetworkDeniedRequestTypes
    extends SignalrServiceNetworkAclPublicNetworkRequestTypes {
  const SignalrServiceNetworkAclPublicNetworkDeniedRequestTypes(
    this.deniedRequestTypes,
  );

  final List<SignalrServiceNetworkAclDeniedRequestTypes> deniedRequestTypes;

  @internal
  @override
  String get blockKey => 'denied_request_types';

  @internal
  @override
  Map<String, Object?> encode() => {
    'denied_request_types': [for (final e in deniedRequestTypes) e.toTfJson()],
  };
}

/// Factory wrapper for `azurerm_signalr_service_network_acl`.
final class AzurermSignalrServiceNetworkAcl extends Resource {
  static const String tfType = 'azurerm_signalr_service_network_acl';

  AzurermSignalrServiceNetworkAcl(
    super.localName, {
    required SignalrServiceNetworkAclDefaultAction defaultAction,
    required TfArg<String> signalrServiceId,
    List<SignalrServiceNetworkAclPrivateEndpoint>? privateEndpoint,
    required SignalrServiceNetworkAclPublicNetwork publicNetwork,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_action': defaultAction,
           'signalr_service_id': signalrServiceId,
           if (privateEndpoint != null)
             'private_endpoint': TfArg.literal([
               for (final e in privateEndpoint) e.encode(),
             ]),
           'public_network': TfArg.literal(publicNetwork.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSignalrServiceNetworkAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSignalrServiceNetworkAcl>`.
  RefTo<AzurermSignalrServiceNetworkAcl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_action` attribute.
  TfRef<String> get defaultAction =>
      TfRef.attribute<String>(this, 'default_action');

  /// Reference to `signalr_service_id` attribute.
  TfRef<String> get signalrServiceId =>
      TfRef.attribute<String>(this, 'signalr_service_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_web_pubsub_network_acl`.
const Set<String> _azurermWebPubsubNetworkAclSensitive = <String>{};

/// Web Pubsub Network Acl Default enum for `default_action`.
extension type const WebPubsubNetworkAclDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  WebPubsubNetworkAclDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  WebPubsubNetworkAclDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const WebPubsubNetworkAclDefaultAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = WebPubsubNetworkAclDefaultAction._(
    TfArgLiteral('Allow'),
  );
  static const deny = WebPubsubNetworkAclDefaultAction._(TfArgLiteral('Deny'));

  static const List<WebPubsubNetworkAclDefaultAction> values = [allow, deny];
}

/// Typed helper for the `private_endpoint` block of
/// `azurerm_web_pubsub_network_acl` (derived from provider schema).
@immutable
final class WebPubsubNetworkAclPrivateEndpoint {
  const WebPubsubNetworkAclPrivateEndpoint({
    this.allowedRequestTypes,
    this.deniedRequestTypes,
    required this.id,
  });

  final List<WebPubsubNetworkAclAllowedRequestTypes>? allowedRequestTypes;

  final List<WebPubsubNetworkAclDeniedRequestTypes>? deniedRequestTypes;

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
extension type const WebPubsubNetworkAclAllowedRequestTypes._(TfArg<String> _)
    implements TfArg<String> {
  WebPubsubNetworkAclAllowedRequestTypes.variable(String name)
    : this._(TfArg.variable(name));
  WebPubsubNetworkAclAllowedRequestTypes.expression(String template)
    : this._(TfArg.expression(template));
  const WebPubsubNetworkAclAllowedRequestTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const clientconnection = WebPubsubNetworkAclAllowedRequestTypes._(
    TfArgLiteral('ClientConnection'),
  );
  static const restapi = WebPubsubNetworkAclAllowedRequestTypes._(
    TfArgLiteral('RESTAPI'),
  );
  static const serverconnection = WebPubsubNetworkAclAllowedRequestTypes._(
    TfArgLiteral('ServerConnection'),
  );
  static const trace = WebPubsubNetworkAclAllowedRequestTypes._(
    TfArgLiteral('Trace'),
  );

  static const List<WebPubsubNetworkAclAllowedRequestTypes> values = [
    clientconnection,
    restapi,
    serverconnection,
    trace,
  ];
}

/// `denied_request_types` — derived from the provider schema description.
extension type const WebPubsubNetworkAclDeniedRequestTypes._(TfArg<String> _)
    implements TfArg<String> {
  WebPubsubNetworkAclDeniedRequestTypes.variable(String name)
    : this._(TfArg.variable(name));
  WebPubsubNetworkAclDeniedRequestTypes.expression(String template)
    : this._(TfArg.expression(template));
  const WebPubsubNetworkAclDeniedRequestTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const clientconnection = WebPubsubNetworkAclDeniedRequestTypes._(
    TfArgLiteral('ClientConnection'),
  );
  static const restapi = WebPubsubNetworkAclDeniedRequestTypes._(
    TfArgLiteral('RESTAPI'),
  );
  static const serverconnection = WebPubsubNetworkAclDeniedRequestTypes._(
    TfArgLiteral('ServerConnection'),
  );
  static const trace = WebPubsubNetworkAclDeniedRequestTypes._(
    TfArgLiteral('Trace'),
  );

  static const List<WebPubsubNetworkAclDeniedRequestTypes> values = [
    clientconnection,
    restapi,
    serverconnection,
    trace,
  ];
}

/// Typed helper for the `public_network` block of
/// `azurerm_web_pubsub_network_acl` (derived from provider schema).
@immutable
final class WebPubsubNetworkAclPublicNetwork {
  const WebPubsubNetworkAclPublicNetwork({this.requestTypes});

  final WebPubsubNetworkAclPublicNetworkRequestTypes? requestTypes;

  @internal
  Map<String, Object?> encode() => {...?requestTypes?.encode()};
}

/// At most one of `allowed_request_types`, `denied_request_types` on the `public_network` block of `azurerm_web_pubsub_network_acl`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.allowedRequestTypes(...)`.
sealed class WebPubsubNetworkAclPublicNetworkRequestTypes {
  const WebPubsubNetworkAclPublicNetworkRequestTypes();

  /// Sets `allowed_request_types`.
  const factory WebPubsubNetworkAclPublicNetworkRequestTypes.allowedRequestTypes(
    List<WebPubsubNetworkAclAllowedRequestTypes> allowedRequestTypes,
  ) = WebPubsubNetworkAclPublicNetworkAllowedRequestTypes;

  /// Sets `denied_request_types`.
  const factory WebPubsubNetworkAclPublicNetworkRequestTypes.deniedRequestTypes(
    List<WebPubsubNetworkAclDeniedRequestTypes> deniedRequestTypes,
  ) = WebPubsubNetworkAclPublicNetworkDeniedRequestTypes;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WebPubsubNetworkAclPublicNetworkRequestTypes.allowedRequestTypes] choice: sets `allowed_request_types`.
final class WebPubsubNetworkAclPublicNetworkAllowedRequestTypes
    extends WebPubsubNetworkAclPublicNetworkRequestTypes {
  const WebPubsubNetworkAclPublicNetworkAllowedRequestTypes(
    this.allowedRequestTypes,
  );

  final List<WebPubsubNetworkAclAllowedRequestTypes> allowedRequestTypes;

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

/// The [WebPubsubNetworkAclPublicNetworkRequestTypes.deniedRequestTypes] choice: sets `denied_request_types`.
final class WebPubsubNetworkAclPublicNetworkDeniedRequestTypes
    extends WebPubsubNetworkAclPublicNetworkRequestTypes {
  const WebPubsubNetworkAclPublicNetworkDeniedRequestTypes(
    this.deniedRequestTypes,
  );

  final List<WebPubsubNetworkAclDeniedRequestTypes> deniedRequestTypes;

  @internal
  @override
  String get blockKey => 'denied_request_types';

  @internal
  @override
  Map<String, Object?> encode() => {
    'denied_request_types': [for (final e in deniedRequestTypes) e.toTfJson()],
  };
}

/// Factory wrapper for `azurerm_web_pubsub_network_acl`.
final class AzurermWebPubsubNetworkAcl extends Resource {
  static const String tfType = 'azurerm_web_pubsub_network_acl';

  AzurermWebPubsubNetworkAcl(
    super.localName, {
    WebPubsubNetworkAclDefaultAction? defaultAction,
    required TfArg<String> webPubsubId,
    List<WebPubsubNetworkAclPrivateEndpoint>? privateEndpoint,
    required WebPubsubNetworkAclPublicNetwork publicNetwork,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_action': ?defaultAction,
           'web_pubsub_id': webPubsubId,
           if (privateEndpoint != null)
             'private_endpoint': TfArg.literal([
               for (final e in privateEndpoint) e.encode(),
             ]),
           'public_network': TfArg.literal(publicNetwork.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermWebPubsubNetworkAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWebPubsubNetworkAcl>`.
  RefTo<AzurermWebPubsubNetworkAcl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_action` attribute.
  TfRef<String> get defaultAction =>
      TfRef.attribute<String>(this, 'default_action');

  /// Reference to `web_pubsub_id` attribute.
  TfRef<String> get webPubsubId =>
      TfRef.attribute<String>(this, 'web_pubsub_id');
}

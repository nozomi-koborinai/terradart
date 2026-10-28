// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_origin`.
const Set<String> _azurermCdnFrontdoorOriginSensitive = <String>{};

/// Typed helper for the `private_link` block of
/// `azurerm_cdn_frontdoor_origin` (derived from provider schema).
@immutable
final class CdnFrontdoorOriginPrivateLink {
  const CdnFrontdoorOriginPrivateLink({
    required this.location,
    required this.privateLinkTargetId,
    this.requestMessage,
    this.targetType,
  });

  final TfArg<String> location;

  final TfArg<String> privateLinkTargetId;

  final TfArg<String>? requestMessage;

  final CdnFrontdoorOriginTargetType? targetType;

  @internal
  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    'private_link_target_id': privateLinkTargetId.toTfJson(),
    'request_message': ?requestMessage?.toTfJson(),
    'target_type': ?targetType?.toTfJson(),
  };
}

/// `target_type` — derived from the provider schema description.
extension type const CdnFrontdoorOriginTargetType._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorOriginTargetType.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorOriginTargetType.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorOriginTargetType.arg(TfArg<String> arg) : this._(arg);

  static const blob = CdnFrontdoorOriginTargetType._(TfArgLiteral('blob'));
  static const blobSecondary = CdnFrontdoorOriginTargetType._(
    TfArgLiteral('blob_secondary'),
  );
  static const gateway = CdnFrontdoorOriginTargetType._(
    TfArgLiteral('Gateway'),
  );
  static const managedenvironments = CdnFrontdoorOriginTargetType._(
    TfArgLiteral('managedEnvironments'),
  );
  static const sites = CdnFrontdoorOriginTargetType._(TfArgLiteral('sites'));
  static const web = CdnFrontdoorOriginTargetType._(TfArgLiteral('web'));
  static const webSecondary = CdnFrontdoorOriginTargetType._(
    TfArgLiteral('web_secondary'),
  );

  static const List<CdnFrontdoorOriginTargetType> values = [
    blob,
    blobSecondary,
    gateway,
    managedenvironments,
    sites,
    web,
    webSecondary,
  ];
}

/// Factory wrapper for `azurerm_cdn_frontdoor_origin`.
final class AzurermCdnFrontdoorOrigin extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_origin';

  AzurermCdnFrontdoorOrigin(
    super.localName, {
    required TfArg<String> cdnFrontdoorOriginGroupId,
    required TfArg<bool> certificateNameCheckEnabled,
    TfArg<bool>? enabled,
    required TfArg<String> hostName,
    TfArg<num>? httpPort,
    TfArg<num>? httpsPort,
    required TfArg<String> name,
    TfArg<String>? originHostHeader,
    TfArg<num>? priority,
    TfArg<num>? weight,
    CdnFrontdoorOriginPrivateLink? privateLink,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cdn_frontdoor_origin_group_id': cdnFrontdoorOriginGroupId,
           'certificate_name_check_enabled': certificateNameCheckEnabled,
           'enabled': ?enabled,
           'host_name': hostName,
           'http_port': ?httpPort,
           'https_port': ?httpsPort,
           'name': name,
           'origin_host_header': ?originHostHeader,
           'priority': ?priority,
           'weight': ?weight,
           if (privateLink != null)
             'private_link': TfArg.literal(privateLink.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorOriginSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorOrigin>`.
  RefTo<AzurermCdnFrontdoorOrigin> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cdn_frontdoor_origin_group_id` attribute.
  TfRef<String> get cdnFrontdoorOriginGroupId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_origin_group_id');

  /// Reference to `certificate_name_check_enabled` attribute.
  TfRef<bool> get certificateNameCheckEnabled =>
      TfRef.attribute<bool>(this, 'certificate_name_check_enabled');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `host_name` attribute.
  TfRef<String> get hostName => TfRef.attribute<String>(this, 'host_name');

  /// Reference to `http_port` attribute.
  TfRef<num> get httpPort => TfRef.attribute<num>(this, 'http_port');

  /// Reference to `https_port` attribute.
  TfRef<num> get httpsPort => TfRef.attribute<num>(this, 'https_port');

  /// Reference to `origin_host_header` attribute.
  TfRef<String> get originHostHeader =>
      TfRef.attribute<String>(this, 'origin_host_header');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `weight` attribute.
  TfRef<num> get weight => TfRef.attribute<num>(this, 'weight');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cdn_frontdoor_profile`.
const Set<String> _azurermCdnFrontdoorProfileSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_cdn_frontdoor_profile` (derived from provider schema).
@immutable
final class CdnFrontdoorProfileIdentity {
  const CdnFrontdoorProfileIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `log_scrubbing_rule` block of
/// `azurerm_cdn_frontdoor_profile` (derived from provider schema).
@immutable
final class CdnFrontdoorProfileLogScrubbingRule {
  const CdnFrontdoorProfileLogScrubbingRule({required this.matchVariable});

  final CdnFrontdoorProfileMatchVariable matchVariable;

  @internal
  Map<String, Object?> encode() => {'match_variable': matchVariable.toTfJson()};
}

/// `match_variable` — derived from the provider schema description.
extension type const CdnFrontdoorProfileMatchVariable._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorProfileMatchVariable.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorProfileMatchVariable.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorProfileMatchVariable.arg(TfArg<String> arg) : this._(arg);

  static const querystringargnames = CdnFrontdoorProfileMatchVariable._(
    TfArgLiteral('QueryStringArgNames'),
  );
  static const requestipaddress = CdnFrontdoorProfileMatchVariable._(
    TfArgLiteral('RequestIPAddress'),
  );
  static const requesturi = CdnFrontdoorProfileMatchVariable._(
    TfArgLiteral('RequestUri'),
  );

  static const List<CdnFrontdoorProfileMatchVariable> values = [
    querystringargnames,
    requestipaddress,
    requesturi,
  ];
}

/// Factory wrapper for `azurerm_cdn_frontdoor_profile`.
final class AzurermCdnFrontdoorProfile extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_profile';

  AzurermCdnFrontdoorProfile(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? responseTimeoutSeconds,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    CdnFrontdoorProfileIdentity? identity,
    List<CdnFrontdoorProfileLogScrubbingRule>? logScrubbingRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'response_timeout_seconds': ?responseTimeoutSeconds,
           'sku_name': skuName,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (logScrubbingRule != null)
             'log_scrubbing_rule': TfArg.literal([
               for (final e in logScrubbingRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorProfile>`.
  RefTo<AzurermCdnFrontdoorProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_guid` attribute.
  TfRef<String> get resourceGuid =>
      TfRef.attribute<String>(this, 'resource_guid');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `response_timeout_seconds` attribute.
  TfRef<num> get responseTimeoutSeconds =>
      TfRef.attribute<num>(this, 'response_timeout_seconds');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

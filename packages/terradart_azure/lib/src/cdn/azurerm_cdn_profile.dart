// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cdn_profile`.
const Set<String> _azurermCdnProfileSensitive = <String>{};

/// Cdn Profile enum for `sku`.
extension type const CdnProfileSku._(TfArg<String> _) implements TfArg<String> {
  CdnProfileSku.variable(String name) : this._(TfArg.variable(name));
  CdnProfileSku.expression(String template)
    : this._(TfArg.expression(template));
  const CdnProfileSku.arg(TfArg<String> arg) : this._(arg);

  static const standardAkamai = CdnProfileSku._(
    TfArgLiteral('Standard_Akamai'),
  );
  static const standardChinacdn = CdnProfileSku._(
    TfArgLiteral('Standard_ChinaCdn'),
  );
  static const standardVerizon = CdnProfileSku._(
    TfArgLiteral('Standard_Verizon'),
  );
  static const standardMicrosoft = CdnProfileSku._(
    TfArgLiteral('Standard_Microsoft'),
  );
  static const premiumVerizon = CdnProfileSku._(
    TfArgLiteral('Premium_Verizon'),
  );

  static const List<CdnProfileSku> values = [
    standardAkamai,
    standardChinacdn,
    standardVerizon,
    standardMicrosoft,
    premiumVerizon,
  ];
}

/// Factory wrapper for `azurerm_cdn_profile`.
final class AzurermCdnProfile extends Resource {
  static const String tfType = 'azurerm_cdn_profile';

  AzurermCdnProfile(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required CdnProfileSku sku,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': sku,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnProfile>`.
  RefTo<AzurermCdnProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

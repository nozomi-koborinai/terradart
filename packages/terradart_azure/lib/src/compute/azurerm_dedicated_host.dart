// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_dedicated_host`.
const Set<String> _azurermDedicatedHostSensitive = <String>{};

/// Dedicated Host License enum for `license_type`.
extension type const DedicatedHostLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  DedicatedHostLicenseType.variable(String name) : this._(TfArg.variable(name));
  DedicatedHostLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const DedicatedHostLicenseType.arg(TfArg<String> arg) : this._(arg);

  static const windowsServerHybrid = DedicatedHostLicenseType._(
    TfArgLiteral('Windows_Server_Hybrid'),
  );
  static const windowsServerPerpetual = DedicatedHostLicenseType._(
    TfArgLiteral('Windows_Server_Perpetual'),
  );

  static const List<DedicatedHostLicenseType> values = [
    windowsServerHybrid,
    windowsServerPerpetual,
  ];
}

/// Dedicated Host Sku enum for `sku_name`.
extension type const DedicatedHostSkuName._(TfArg<String> _)
    implements TfArg<String> {
  DedicatedHostSkuName.variable(String name) : this._(TfArg.variable(name));
  DedicatedHostSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const DedicatedHostSkuName.arg(TfArg<String> arg) : this._(arg);

  static const dadsv5Type1 = DedicatedHostSkuName._(
    TfArgLiteral('DADSv5-Type1'),
  );
  static const dasv4Type1 = DedicatedHostSkuName._(TfArgLiteral('DASv4-Type1'));
  static const dasv4Type2 = DedicatedHostSkuName._(TfArgLiteral('DASv4-Type2'));
  static const dasv5Type1 = DedicatedHostSkuName._(TfArgLiteral('DASv5-Type1'));
  static const dcsv2Type1 = DedicatedHostSkuName._(TfArgLiteral('DCSv2-Type1'));
  static const ddsv4Type1 = DedicatedHostSkuName._(TfArgLiteral('DDSv4-Type1'));
  static const ddsv4Type2 = DedicatedHostSkuName._(TfArgLiteral('DDSv4-Type2'));
  static const ddsv5Type1 = DedicatedHostSkuName._(TfArgLiteral('DDSv5-Type1'));
  static const dsv3Type1 = DedicatedHostSkuName._(TfArgLiteral('DSv3-Type1'));
  static const dsv3Type2 = DedicatedHostSkuName._(TfArgLiteral('DSv3-Type2'));
  static const dsv3Type3 = DedicatedHostSkuName._(TfArgLiteral('DSv3-Type3'));
  static const dsv3Type4 = DedicatedHostSkuName._(TfArgLiteral('DSv3-Type4'));
  static const dsv4Type1 = DedicatedHostSkuName._(TfArgLiteral('DSv4-Type1'));
  static const dsv4Type2 = DedicatedHostSkuName._(TfArgLiteral('DSv4-Type2'));
  static const dsv5Type1 = DedicatedHostSkuName._(TfArgLiteral('DSv5-Type1'));
  static const eadsv5Type1 = DedicatedHostSkuName._(
    TfArgLiteral('EADSv5-Type1'),
  );
  static const easv4Type1 = DedicatedHostSkuName._(TfArgLiteral('EASv4-Type1'));
  static const easv4Type2 = DedicatedHostSkuName._(TfArgLiteral('EASv4-Type2'));
  static const easv5Type1 = DedicatedHostSkuName._(TfArgLiteral('EASv5-Type1'));
  static const edsv4Type1 = DedicatedHostSkuName._(TfArgLiteral('EDSv4-Type1'));
  static const edsv4Type2 = DedicatedHostSkuName._(TfArgLiteral('EDSv4-Type2'));
  static const edsv5Type1 = DedicatedHostSkuName._(TfArgLiteral('EDSv5-Type1'));
  static const esv3Type1 = DedicatedHostSkuName._(TfArgLiteral('ESv3-Type1'));
  static const esv3Type2 = DedicatedHostSkuName._(TfArgLiteral('ESv3-Type2'));
  static const esv3Type3 = DedicatedHostSkuName._(TfArgLiteral('ESv3-Type3'));
  static const esv3Type4 = DedicatedHostSkuName._(TfArgLiteral('ESv3-Type4'));
  static const esv4Type1 = DedicatedHostSkuName._(TfArgLiteral('ESv4-Type1'));
  static const esv4Type2 = DedicatedHostSkuName._(TfArgLiteral('ESv4-Type2'));
  static const esv5Type1 = DedicatedHostSkuName._(TfArgLiteral('ESv5-Type1'));
  static const fsv2Type2 = DedicatedHostSkuName._(TfArgLiteral('FSv2-Type2'));
  static const fsv2Type3 = DedicatedHostSkuName._(TfArgLiteral('FSv2-Type3'));
  static const fsv2Type4 = DedicatedHostSkuName._(TfArgLiteral('FSv2-Type4'));
  static const fxmdsType1 = DedicatedHostSkuName._(TfArgLiteral('FXmds-Type1'));
  static const lsv2Type1 = DedicatedHostSkuName._(TfArgLiteral('LSv2-Type1'));
  static const lsv3Type1 = DedicatedHostSkuName._(TfArgLiteral('LSv3-Type1'));
  static const mdmsv2medmemType1 = DedicatedHostSkuName._(
    TfArgLiteral('MDMSv2MedMem-Type1'),
  );
  static const mdsv2medmemType1 = DedicatedHostSkuName._(
    TfArgLiteral('MDSv2MedMem-Type1'),
  );
  static const mmsv2medmemType1 = DedicatedHostSkuName._(
    TfArgLiteral('MMSv2MedMem-Type1'),
  );
  static const msType1 = DedicatedHostSkuName._(TfArgLiteral('MS-Type1'));
  static const msmType1 = DedicatedHostSkuName._(TfArgLiteral('MSm-Type1'));
  static const msmv2Type1 = DedicatedHostSkuName._(TfArgLiteral('MSmv2-Type1'));
  static const msv2Type1 = DedicatedHostSkuName._(TfArgLiteral('MSv2-Type1'));
  static const msv2medmemType1 = DedicatedHostSkuName._(
    TfArgLiteral('MSv2MedMem-Type1'),
  );
  static const nvasv4Type1 = DedicatedHostSkuName._(
    TfArgLiteral('NVASv4-Type1'),
  );
  static const nvsv3Type1 = DedicatedHostSkuName._(TfArgLiteral('NVSv3-Type1'));

  static const List<DedicatedHostSkuName> values = [
    dadsv5Type1,
    dasv4Type1,
    dasv4Type2,
    dasv5Type1,
    dcsv2Type1,
    ddsv4Type1,
    ddsv4Type2,
    ddsv5Type1,
    dsv3Type1,
    dsv3Type2,
    dsv3Type3,
    dsv3Type4,
    dsv4Type1,
    dsv4Type2,
    dsv5Type1,
    eadsv5Type1,
    easv4Type1,
    easv4Type2,
    easv5Type1,
    edsv4Type1,
    edsv4Type2,
    edsv5Type1,
    esv3Type1,
    esv3Type2,
    esv3Type3,
    esv3Type4,
    esv4Type1,
    esv4Type2,
    esv5Type1,
    fsv2Type2,
    fsv2Type3,
    fsv2Type4,
    fxmdsType1,
    lsv2Type1,
    lsv3Type1,
    mdmsv2medmemType1,
    mdsv2medmemType1,
    mmsv2medmemType1,
    msType1,
    msmType1,
    msmv2Type1,
    msv2Type1,
    msv2medmemType1,
    nvasv4Type1,
    nvsv3Type1,
  ];
}

/// Factory wrapper for `azurerm_dedicated_host`.
final class AzurermDedicatedHost extends Resource {
  static const String tfType = 'azurerm_dedicated_host';

  AzurermDedicatedHost(
    super.localName, {
    TfArg<bool>? autoReplaceOnFailure,
    required TfArg<String> dedicatedHostGroupId,
    DedicatedHostLicenseType? licenseType,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<num> platformFaultDomain,
    required DedicatedHostSkuName skuName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_replace_on_failure': ?autoReplaceOnFailure,
           'dedicated_host_group_id': dedicatedHostGroupId,
           'license_type': ?licenseType,
           'location': location,
           'name': name,
           'platform_fault_domain': platformFaultDomain,
           'sku_name': skuName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDedicatedHostSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDedicatedHost>`.
  RefTo<AzurermDedicatedHost> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_replace_on_failure` attribute.
  TfRef<bool> get autoReplaceOnFailure =>
      TfRef.attribute<bool>(this, 'auto_replace_on_failure');

  /// Reference to `dedicated_host_group_id` attribute.
  TfRef<String> get dedicatedHostGroupId =>
      TfRef.attribute<String>(this, 'dedicated_host_group_id');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `platform_fault_domain` attribute.
  TfRef<num> get platformFaultDomain =>
      TfRef.attribute<num>(this, 'platform_fault_domain');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

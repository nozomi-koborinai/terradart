// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_pool`.
const Set<String> _azurermNetappPoolSensitive = <String>{};

/// Netapp Pool Encryption enum for `encryption_type`.
extension type const NetappPoolEncryptionType._(TfArg<String> _)
    implements TfArg<String> {
  NetappPoolEncryptionType.variable(String name) : this._(TfArg.variable(name));
  NetappPoolEncryptionType.expression(String template)
    : this._(TfArg.expression(template));
  const NetappPoolEncryptionType.arg(TfArg<String> arg) : this._(arg);

  static const double = NetappPoolEncryptionType._(TfArgLiteral('Double'));
  static const single = NetappPoolEncryptionType._(TfArgLiteral('Single'));

  static const List<NetappPoolEncryptionType> values = [double, single];
}

/// Netapp Pool Qos enum for `qos_type`.
extension type const NetappPoolQosType._(TfArg<String> _)
    implements TfArg<String> {
  NetappPoolQosType.variable(String name) : this._(TfArg.variable(name));
  NetappPoolQosType.expression(String template)
    : this._(TfArg.expression(template));
  const NetappPoolQosType.arg(TfArg<String> arg) : this._(arg);

  static const auto = NetappPoolQosType._(TfArgLiteral('Auto'));
  static const manual = NetappPoolQosType._(TfArgLiteral('Manual'));

  static const List<NetappPoolQosType> values = [auto, manual];
}

/// Netapp Pool Service enum for `service_level`.
extension type const NetappPoolServiceLevel._(TfArg<String> _)
    implements TfArg<String> {
  NetappPoolServiceLevel.variable(String name) : this._(TfArg.variable(name));
  NetappPoolServiceLevel.expression(String template)
    : this._(TfArg.expression(template));
  const NetappPoolServiceLevel.arg(TfArg<String> arg) : this._(arg);

  static const premium = NetappPoolServiceLevel._(TfArgLiteral('Premium'));
  static const standard = NetappPoolServiceLevel._(TfArgLiteral('Standard'));
  static const ultra = NetappPoolServiceLevel._(TfArgLiteral('Ultra'));
  static const flexible = NetappPoolServiceLevel._(TfArgLiteral('Flexible'));

  static const List<NetappPoolServiceLevel> values = [
    premium,
    standard,
    ultra,
    flexible,
  ];
}

/// Factory wrapper for `azurerm_netapp_pool`.
final class AzurermNetappPool extends Resource {
  static const String tfType = 'azurerm_netapp_pool';

  AzurermNetappPool(
    super.localName, {
    required TfArg<String> accountName,
    TfArg<bool>? coolAccessEnabled,
    TfArg<num>? customThroughputMibps,
    NetappPoolEncryptionType? encryptionType,
    required TfArg<String> location,
    required TfArg<String> name,
    NetappPoolQosType? qosType,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required NetappPoolServiceLevel serviceLevel,
    required TfArg<num> sizeInTb,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'cool_access_enabled': ?coolAccessEnabled,
           'custom_throughput_mibps': ?customThroughputMibps,
           'encryption_type': ?encryptionType,
           'location': location,
           'name': name,
           'qos_type': ?qosType,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_level': serviceLevel,
           'size_in_tb': sizeInTb,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetappPool>`.
  RefTo<AzurermNetappPool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `cool_access_enabled` attribute.
  TfRef<bool> get coolAccessEnabled =>
      TfRef.attribute<bool>(this, 'cool_access_enabled');

  /// Reference to `custom_throughput_mibps` attribute.
  TfRef<num> get customThroughputMibps =>
      TfRef.attribute<num>(this, 'custom_throughput_mibps');

  /// Reference to `encryption_type` attribute.
  TfRef<String> get encryptionType =>
      TfRef.attribute<String>(this, 'encryption_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `qos_type` attribute.
  TfRef<String> get qosType => TfRef.attribute<String>(this, 'qos_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_level` attribute.
  TfRef<String> get serviceLevel =>
      TfRef.attribute<String>(this, 'service_level');

  /// Reference to `size_in_tb` attribute.
  TfRef<num> get sizeInTb => TfRef.attribute<num>(this, 'size_in_tb');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

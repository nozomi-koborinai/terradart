// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_qumulo_file_system`.
const Set<String> _azurermQumuloFileSystemSensitive = <String>{
  'admin_password',
};

/// Qumulo File System Storage enum for `storage_sku`.
extension type const QumuloFileSystemStorageSku._(TfArg<String> _)
    implements TfArg<String> {
  QumuloFileSystemStorageSku.variable(String name)
    : this._(TfArg.variable(name));
  QumuloFileSystemStorageSku.expression(String template)
    : this._(TfArg.expression(template));
  const QumuloFileSystemStorageSku.arg(TfArg<String> arg) : this._(arg);

  static const coldLrs = QumuloFileSystemStorageSku._(TfArgLiteral('Cold_LRS'));
  static const hotLrs = QumuloFileSystemStorageSku._(TfArgLiteral('Hot_LRS'));
  static const hotZrs = QumuloFileSystemStorageSku._(TfArgLiteral('Hot_ZRS'));

  static const List<QumuloFileSystemStorageSku> values = [
    coldLrs,
    hotLrs,
    hotZrs,
  ];
}

/// Factory wrapper for `azurerm_qumulo_file_system`.
final class AzurermQumuloFileSystem extends Resource {
  static const String tfType = 'azurerm_qumulo_file_system';

  AzurermQumuloFileSystem(
    super.localName, {
    required Sensitive<String> adminPassword,
    required TfArg<String> email,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? offerId,
    TfArg<String>? planId,
    TfArg<String>? publisherId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required QumuloFileSystemStorageSku storageSku,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> zone,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_password': adminPassword,
           'email': email,
           'location': location,
           'name': name,
           'offer_id': ?offerId,
           'plan_id': ?planId,
           'publisher_id': ?publisherId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_sku': storageSku,
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
           'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermQumuloFileSystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermQumuloFileSystem>`.
  RefTo<AzurermQumuloFileSystem> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `admin_password` attribute.
  TfRef<String> get adminPassword =>
      TfRef.attribute<String>(this, 'admin_password');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `offer_id` attribute.
  TfRef<String> get offerId => TfRef.attribute<String>(this, 'offer_id');

  /// Reference to `plan_id` attribute.
  TfRef<String> get planId => TfRef.attribute<String>(this, 'plan_id');

  /// Reference to `publisher_id` attribute.
  TfRef<String> get publisherId =>
      TfRef.attribute<String>(this, 'publisher_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_sku` attribute.
  TfRef<String> get storageSku => TfRef.attribute<String>(this, 'storage_sku');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}

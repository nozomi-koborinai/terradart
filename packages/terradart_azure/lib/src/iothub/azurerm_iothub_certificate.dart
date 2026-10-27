// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_certificate`.
const Set<String> _azurermIothubCertificateSensitive = <String>{
  'certificate_content',
};

/// Factory wrapper for `azurerm_iothub_certificate`.
final class AzurermIothubCertificate extends Resource {
  static const String tfType = 'azurerm_iothub_certificate';

  AzurermIothubCertificate(
    super.localName, {
    required Sensitive<String> certificateContent,
    required TfArg<String> iothubName,
    TfArg<bool>? isVerified,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_content': certificateContent,
           'iothub_name': iothubName,
           'is_verified': ?isVerified,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIothubCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubCertificate>`.
  RefTo<AzurermIothubCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_content` attribute.
  TfRef<String> get certificateContent =>
      TfRef.attribute<String>(this, 'certificate_content');

  /// Reference to `iothub_name` attribute.
  TfRef<String> get iothubName => TfRef.attribute<String>(this, 'iothub_name');

  /// Reference to `is_verified` attribute.
  TfRef<bool> get isVerified => TfRef.attribute<bool>(this, 'is_verified');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

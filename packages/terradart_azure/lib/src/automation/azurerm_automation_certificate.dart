// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_certificate`.
const Set<String> _azurermAutomationCertificateSensitive = <String>{'base64'};

/// Factory wrapper for `azurerm_automation_certificate`.
final class AzurermAutomationCertificate extends Resource {
  static const String tfType = 'azurerm_automation_certificate';

  AzurermAutomationCertificate(
    super.localName, {
    required TfArg<String> automationAccountName,
    required Sensitive<String> base64,
    TfArg<String>? description,
    TfArg<bool>? exportable,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'base64': base64,
           'description': ?description,
           'exportable': ?exportable,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationCertificate>`.
  RefTo<AzurermAutomationCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `base64` attribute.
  TfRef<String> get base64 => TfRef.attribute<String>(this, 'base64');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `exportable` attribute.
  TfRef<bool> get exportable => TfRef.attribute<bool>(this, 'exportable');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}

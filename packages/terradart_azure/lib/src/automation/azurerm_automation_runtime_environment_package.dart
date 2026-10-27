// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_automation_runtime_environment_package`.
const Set<String> _azurermAutomationRuntimeEnvironmentPackageSensitive =
    <String>{};

/// Factory wrapper for `azurerm_automation_runtime_environment_package`.
final class AzurermAutomationRuntimeEnvironmentPackage extends Resource {
  static const String tfType = 'azurerm_automation_runtime_environment_package';

  AzurermAutomationRuntimeEnvironmentPackage(
    super.localName, {
    required TfArg<String> automationRuntimeEnvironmentId,
    required TfArg<String> contentUri,
    TfArg<String>? contentVersion,
    TfArg<String>? hashAlgorithm,
    TfArg<String>? hashValue,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_runtime_environment_id': automationRuntimeEnvironmentId,
           'content_uri': contentUri,
           'content_version': ?contentVersion,
           'hash_algorithm': ?hashAlgorithm,
           'hash_value': ?hashValue,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermAutomationRuntimeEnvironmentPackageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationRuntimeEnvironmentPackage>`.
  RefTo<AzurermAutomationRuntimeEnvironmentPackage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default` attribute.
  TfRef<bool> get defaultAttr => TfRef.attribute<bool>(this, 'default');

  /// Reference to `size_in_bytes` attribute.
  TfRef<num> get sizeInBytes => TfRef.attribute<num>(this, 'size_in_bytes');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `automation_runtime_environment_id` attribute.
  TfRef<String> get automationRuntimeEnvironmentId =>
      TfRef.attribute<String>(this, 'automation_runtime_environment_id');

  /// Reference to `content_uri` attribute.
  TfRef<String> get contentUri => TfRef.attribute<String>(this, 'content_uri');

  /// Reference to `content_version` attribute.
  TfRef<String> get contentVersion =>
      TfRef.attribute<String>(this, 'content_version');

  /// Reference to `hash_algorithm` attribute.
  TfRef<String> get hashAlgorithm =>
      TfRef.attribute<String>(this, 'hash_algorithm');

  /// Reference to `hash_value` attribute.
  TfRef<String> get hashValue => TfRef.attribute<String>(this, 'hash_value');
}

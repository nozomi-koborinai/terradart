// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_managed_disk_sas_token`.
const Set<String> _azurermManagedDiskSasTokenSensitive = <String>{'sas_url'};

/// Factory wrapper for `azurerm_managed_disk_sas_token`.
final class AzurermManagedDiskSasToken extends Resource {
  static const String tfType = 'azurerm_managed_disk_sas_token';

  AzurermManagedDiskSasToken(
    super.localName, {
    required TfArg<String> accessLevel,
    required TfArg<num> durationInSeconds,
    required TfArg<String> managedDiskId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_level': accessLevel,
           'duration_in_seconds': durationInSeconds,
           'managed_disk_id': managedDiskId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermManagedDiskSasTokenSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagedDiskSasToken>`.
  RefTo<AzurermManagedDiskSasToken> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `sas_url` attribute.
  TfRef<String> get sasUrl => TfRef.attribute<String>(this, 'sas_url');

  /// Reference to `access_level` attribute.
  TfRef<String> get accessLevel =>
      TfRef.attribute<String>(this, 'access_level');

  /// Reference to `duration_in_seconds` attribute.
  TfRef<num> get durationInSeconds =>
      TfRef.attribute<num>(this, 'duration_in_seconds');

  /// Reference to `managed_disk_id` attribute.
  TfRef<String> get managedDiskId =>
      TfRef.attribute<String>(this, 'managed_disk_id');
}

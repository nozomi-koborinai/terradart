// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_iothub_device_update_instance`.
const Set<String> _azurermIothubDeviceUpdateInstanceSensitive = <String>{
  'diagnostic_storage_account.connection_string',
};

/// Typed helper for the `diagnostic_storage_account` block of
/// `azurerm_iothub_device_update_instance` (derived from provider schema).
@immutable
final class IothubDeviceUpdateInstanceDiagnosticStorageAccount {
  const IothubDeviceUpdateInstanceDiagnosticStorageAccount({
    this.connectionString,
    this.connectionStringWo,
    this.connectionStringWoVersion,
    required this.id,
  });

  final Sensitive<String>? connectionString;

  final TfArg<String>? connectionStringWo;

  final TfArg<num>? connectionStringWoVersion;

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {
    'connection_string': ?connectionString?.toTfJson(),
    'connection_string_wo': ?connectionStringWo?.toTfJson(),
    'connection_string_wo_version': ?connectionStringWoVersion?.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_iothub_device_update_instance`.
final class AzurermIothubDeviceUpdateInstance extends Resource {
  static const String tfType = 'azurerm_iothub_device_update_instance';

  AzurermIothubDeviceUpdateInstance(
    super.localName, {
    required TfArg<String> deviceUpdateAccountId,
    TfArg<bool>? diagnosticEnabled,
    required TfArg<String> iothubId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    IothubDeviceUpdateInstanceDiagnosticStorageAccount?
    diagnosticStorageAccount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'device_update_account_id': deviceUpdateAccountId,
           'diagnostic_enabled': ?diagnosticEnabled,
           'iothub_id': iothubId,
           'name': name,
           'tags': ?tags,
           if (diagnosticStorageAccount != null)
             'diagnostic_storage_account': TfArg.literal(
               diagnosticStorageAccount.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermIothubDeviceUpdateInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubDeviceUpdateInstance>`.
  RefTo<AzurermIothubDeviceUpdateInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `device_update_account_id` attribute.
  TfRef<String> get deviceUpdateAccountId =>
      TfRef.attribute<String>(this, 'device_update_account_id');

  /// Reference to `diagnostic_enabled` attribute.
  TfRef<bool> get diagnosticEnabled =>
      TfRef.attribute<bool>(this, 'diagnostic_enabled');

  /// Reference to `iothub_id` attribute.
  TfRef<String> get iothubId => TfRef.attribute<String>(this, 'iothub_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

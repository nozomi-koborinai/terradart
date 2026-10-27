// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_iothub_file_upload`.
const Set<String> _azurermIothubFileUploadSensitive = <String>{
  'connection_string',
};

/// Factory wrapper for `azurerm_iothub_file_upload`.
final class AzurermIothubFileUpload extends Resource {
  static const String tfType = 'azurerm_iothub_file_upload';

  AzurermIothubFileUpload(
    super.localName, {
    TfArg<String>? authenticationType,
    required Sensitive<String> connectionString,
    required TfArg<String> containerName,
    TfArg<String>? defaultTtl,
    TfArg<String>? identityId,
    required TfArg<String> iothubId,
    TfArg<String>? lockDuration,
    TfArg<num>? maxDeliveryCount,
    TfArg<bool>? notificationsEnabled,
    TfArg<String>? sasTtl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_type': ?authenticationType,
           'connection_string': connectionString,
           'container_name': containerName,
           'default_ttl': ?defaultTtl,
           'identity_id': ?identityId,
           'iothub_id': iothubId,
           'lock_duration': ?lockDuration,
           'max_delivery_count': ?maxDeliveryCount,
           'notifications_enabled': ?notificationsEnabled,
           'sas_ttl': ?sasTtl,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIothubFileUploadSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubFileUpload>`.
  RefTo<AzurermIothubFileUpload> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `container_name` attribute.
  TfRef<String> get containerName =>
      TfRef.attribute<String>(this, 'container_name');

  /// Reference to `default_ttl` attribute.
  TfRef<String> get defaultTtl => TfRef.attribute<String>(this, 'default_ttl');

  /// Reference to `identity_id` attribute.
  TfRef<String> get identityId => TfRef.attribute<String>(this, 'identity_id');

  /// Reference to `iothub_id` attribute.
  TfRef<String> get iothubId => TfRef.attribute<String>(this, 'iothub_id');

  /// Reference to `lock_duration` attribute.
  TfRef<String> get lockDuration =>
      TfRef.attribute<String>(this, 'lock_duration');

  /// Reference to `max_delivery_count` attribute.
  TfRef<num> get maxDeliveryCount =>
      TfRef.attribute<num>(this, 'max_delivery_count');

  /// Reference to `notifications_enabled` attribute.
  TfRef<bool> get notificationsEnabled =>
      TfRef.attribute<bool>(this, 'notifications_enabled');

  /// Reference to `sas_ttl` attribute.
  TfRef<String> get sasTtl => TfRef.attribute<String>(this, 'sas_ttl');
}

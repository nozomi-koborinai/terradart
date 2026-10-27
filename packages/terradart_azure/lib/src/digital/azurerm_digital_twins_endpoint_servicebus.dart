// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_digital_twins_endpoint_servicebus`.
const Set<String> _azurermDigitalTwinsEndpointServicebusSensitive = <String>{
  'dead_letter_storage_secret',
  'servicebus_primary_connection_string',
  'servicebus_secondary_connection_string',
};

/// Factory wrapper for `azurerm_digital_twins_endpoint_servicebus`.
final class AzurermDigitalTwinsEndpointServicebus extends Resource {
  static const String tfType = 'azurerm_digital_twins_endpoint_servicebus';

  AzurermDigitalTwinsEndpointServicebus(
    super.localName, {
    Sensitive<String>? deadLetterStorageSecret,
    required TfArg<String> digitalTwinsId,
    required TfArg<String> name,
    required Sensitive<String> servicebusPrimaryConnectionString,
    required Sensitive<String> servicebusSecondaryConnectionString,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dead_letter_storage_secret': ?deadLetterStorageSecret,
           'digital_twins_id': digitalTwinsId,
           'name': name,
           'servicebus_primary_connection_string':
               servicebusPrimaryConnectionString,
           'servicebus_secondary_connection_string':
               servicebusSecondaryConnectionString,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDigitalTwinsEndpointServicebusSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDigitalTwinsEndpointServicebus>`.
  RefTo<AzurermDigitalTwinsEndpointServicebus> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dead_letter_storage_secret` attribute.
  TfRef<String> get deadLetterStorageSecret =>
      TfRef.attribute<String>(this, 'dead_letter_storage_secret');

  /// Reference to `digital_twins_id` attribute.
  TfRef<String> get digitalTwinsId =>
      TfRef.attribute<String>(this, 'digital_twins_id');

  /// Reference to `servicebus_primary_connection_string` attribute.
  TfRef<String> get servicebusPrimaryConnectionString =>
      TfRef.attribute<String>(this, 'servicebus_primary_connection_string');

  /// Reference to `servicebus_secondary_connection_string` attribute.
  TfRef<String> get servicebusSecondaryConnectionString =>
      TfRef.attribute<String>(this, 'servicebus_secondary_connection_string');
}

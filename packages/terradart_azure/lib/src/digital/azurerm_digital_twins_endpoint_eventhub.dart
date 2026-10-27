// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_digital_twins_endpoint_eventhub`.
const Set<String> _azurermDigitalTwinsEndpointEventhubSensitive = <String>{
  'dead_letter_storage_secret',
  'eventhub_primary_connection_string',
  'eventhub_secondary_connection_string',
};

/// Factory wrapper for `azurerm_digital_twins_endpoint_eventhub`.
final class AzurermDigitalTwinsEndpointEventhub extends Resource {
  static const String tfType = 'azurerm_digital_twins_endpoint_eventhub';

  AzurermDigitalTwinsEndpointEventhub(
    super.localName, {
    Sensitive<String>? deadLetterStorageSecret,
    required TfArg<String> digitalTwinsId,
    required Sensitive<String> eventhubPrimaryConnectionString,
    required Sensitive<String> eventhubSecondaryConnectionString,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dead_letter_storage_secret': ?deadLetterStorageSecret,
           'digital_twins_id': digitalTwinsId,
           'eventhub_primary_connection_string':
               eventhubPrimaryConnectionString,
           'eventhub_secondary_connection_string':
               eventhubSecondaryConnectionString,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDigitalTwinsEndpointEventhubSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDigitalTwinsEndpointEventhub>`.
  RefTo<AzurermDigitalTwinsEndpointEventhub> get ref => RefTo.of(this);

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

  /// Reference to `eventhub_primary_connection_string` attribute.
  TfRef<String> get eventhubPrimaryConnectionString =>
      TfRef.attribute<String>(this, 'eventhub_primary_connection_string');

  /// Reference to `eventhub_secondary_connection_string` attribute.
  TfRef<String> get eventhubSecondaryConnectionString =>
      TfRef.attribute<String>(this, 'eventhub_secondary_connection_string');
}

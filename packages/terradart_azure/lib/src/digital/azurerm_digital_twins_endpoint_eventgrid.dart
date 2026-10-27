// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_digital_twins_endpoint_eventgrid`.
const Set<String> _azurermDigitalTwinsEndpointEventgridSensitive = <String>{};

/// Factory wrapper for `azurerm_digital_twins_endpoint_eventgrid`.
final class AzurermDigitalTwinsEndpointEventgrid extends Resource {
  static const String tfType = 'azurerm_digital_twins_endpoint_eventgrid';

  AzurermDigitalTwinsEndpointEventgrid(
    super.localName, {
    TfArg<String>? deadLetterStorageSecret,
    required TfArg<String> digitalTwinsId,
    required TfArg<String> eventgridTopicEndpoint,
    required TfArg<String> eventgridTopicPrimaryAccessKey,
    required TfArg<String> eventgridTopicSecondaryAccessKey,
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
           'eventgrid_topic_endpoint': eventgridTopicEndpoint,
           'eventgrid_topic_primary_access_key': eventgridTopicPrimaryAccessKey,
           'eventgrid_topic_secondary_access_key':
               eventgridTopicSecondaryAccessKey,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDigitalTwinsEndpointEventgridSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDigitalTwinsEndpointEventgrid>`.
  RefTo<AzurermDigitalTwinsEndpointEventgrid> get ref => RefTo.of(this);

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

  /// Reference to `eventgrid_topic_endpoint` attribute.
  TfRef<String> get eventgridTopicEndpoint =>
      TfRef.attribute<String>(this, 'eventgrid_topic_endpoint');

  /// Reference to `eventgrid_topic_primary_access_key` attribute.
  TfRef<String> get eventgridTopicPrimaryAccessKey =>
      TfRef.attribute<String>(this, 'eventgrid_topic_primary_access_key');

  /// Reference to `eventgrid_topic_secondary_access_key` attribute.
  TfRef<String> get eventgridTopicSecondaryAccessKey =>
      TfRef.attribute<String>(this, 'eventgrid_topic_secondary_access_key');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appintegrations_event_integration`.
const Set<String> _awsAppintegrationsEventIntegrationSensitive = <String>{};

/// Factory wrapper for `aws_appintegrations_event_integration`.
final class DataAwsAppintegrationsEventIntegration extends Data {
  static const String tfType = 'aws_appintegrations_event_integration';

  DataAwsAppintegrationsEventIntegration({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAppintegrationsEventIntegrationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `event_filter` attribute.
  TfRef<List<Map<String, Object?>>> get eventFilter =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'event_filter');

  /// Reference to `eventbridge_bus` attribute.
  TfRef<String> get eventbridgeBus =>
      TfRef.attribute<String>(this, 'eventbridge_bus');
}

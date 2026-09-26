// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appintegrations_event_integration`.
const Set<String> _awsAppintegrationsEventIntegrationSensitive = <String>{};

/// Typed helper for the `event_filter` block of
/// `aws_appintegrations_event_integration` (derived from provider schema).
@immutable
final class AppintegrationsEventIntegrationEventFilter {
  const AppintegrationsEventIntegrationEventFilter({required this.source});

  final TfArg<String> source;

  Map<String, Object?> encode() => {'source': source.toTfJson()};
}

/// Factory wrapper for `aws_appintegrations_event_integration`.
final class AwsAppintegrationsEventIntegration extends Resource {
  static const String tfType = 'aws_appintegrations_event_integration';

  AwsAppintegrationsEventIntegration({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> eventbridgeBus,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required AppintegrationsEventIntegrationEventFilter eventFilter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'eventbridge_bus': eventbridgeBus,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'event_filter': TfArg.literal(eventFilter.encode()),
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
}

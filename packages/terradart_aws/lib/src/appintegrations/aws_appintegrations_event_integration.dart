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

  AwsAppintegrationsEventIntegration(
    super.localName, {
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
           'description': ?description,
           'eventbridge_bus': eventbridgeBus,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'event_filter': TfArg.literal(eventFilter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAppintegrationsEventIntegrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppintegrationsEventIntegration>`.
  RefTo<AwsAppintegrationsEventIntegration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `eventbridge_bus` attribute.
  TfRef<String> get eventbridgeBus =>
      TfRef.attribute<String>(this, 'eventbridge_bus');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

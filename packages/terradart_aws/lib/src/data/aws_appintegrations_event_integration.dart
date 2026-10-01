// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../appintegrations/aws_appintegrations_event_integration.dart';

/// Sensitive field paths for `aws_appintegrations_event_integration`.
const Set<String> _awsAppintegrationsEventIntegrationSensitive = <String>{};

/// Factory wrapper for `aws_appintegrations_event_integration`.
final class DataAwsAppintegrationsEventIntegration extends Data {
  static const String tfType = 'aws_appintegrations_event_integration';

  DataAwsAppintegrationsEventIntegration(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAppintegrationsEventIntegrationSensitive;

  /// A reference to the `aws_appintegrations_event_integration` this data source reads, for
  /// arguments typed `RefTo<AwsAppintegrationsEventIntegration>`.
  RefTo<AwsAppintegrationsEventIntegration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssmincidents_response_plan`.
const Set<String> _awsSsmincidentsResponsePlanSensitive = <String>{};

/// Factory wrapper for `aws_ssmincidents_response_plan`.
final class DataAwsSsmincidentsResponsePlan extends Data {
  static const String tfType = 'aws_ssmincidents_response_plan';

  DataAwsSsmincidentsResponsePlan({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmincidentsResponsePlanSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<List<Map<String, Object?>>> get action =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'action');

  /// Reference to `chat_channel` attribute.
  TfRef<List<String>> get chatChannel =>
      TfRef.attribute<List<String>>(this, 'chat_channel');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `engagements` attribute.
  TfRef<List<String>> get engagements =>
      TfRef.attribute<List<String>>(this, 'engagements');

  /// Reference to `incident_template` attribute.
  TfRef<List<Map<String, Object?>>> get incidentTemplate =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'incident_template');

  /// Reference to `integration` attribute.
  TfRef<List<Map<String, Object?>>> get integration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'integration');
}

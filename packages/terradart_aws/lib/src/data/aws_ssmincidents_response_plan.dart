// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssmincidents/aws_ssmincidents_response_plan.dart';

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
         argMap: {'arn': arn, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsSsmincidentsResponsePlanSensitive;

  /// A reference to the `aws_ssmincidents_response_plan` this data source reads, for
  /// arguments typed `RefTo<AwsSsmincidentsResponsePlan>`.
  RefTo<AwsSsmincidentsResponsePlan> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

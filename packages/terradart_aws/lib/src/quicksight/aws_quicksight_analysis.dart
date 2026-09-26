// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_analysis`.
const Set<String> _awsQuicksightAnalysisSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_analysis`.
final class AwsQuicksightAnalysis extends Resource {
  static const String tfType = 'aws_quicksight_analysis';

  AwsQuicksightAnalysis({
    required super.localName,
    required TfArg<String> analysisId,
    TfArg<String>? awsAccountId,
    required TfArg<String> name,
    TfArg<num>? recoveryWindowInDays,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? themeArn,
    TfArg<Map<String, dynamic>>? definition,
    TfArg<Map<String, dynamic>>? parameters,
    TfArg<List<Map<String, dynamic>>>? permissions,
    TfArg<Map<String, dynamic>>? sourceEntity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'analysis_id': analysisId,
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'name': name,
           if (recoveryWindowInDays != null)
             'recovery_window_in_days': recoveryWindowInDays,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (themeArn != null) 'theme_arn': themeArn,
           if (definition != null) 'definition': definition,
           if (parameters != null) 'parameters': parameters,
           if (permissions != null) 'permissions': permissions,
           if (sourceEntity != null) 'source_entity': sourceEntity,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightAnalysisSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `last_published_time` attribute.
  TfRef<String> get lastPublishedTime =>
      TfRef.attribute<String>(this, 'last_published_time');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}

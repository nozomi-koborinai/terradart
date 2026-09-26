// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_analysis`.
const Set<String> _awsQuicksightAnalysisSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_analysis`.
final class DataAwsQuicksightAnalysis extends Data {
  static const String tfType = 'aws_quicksight_analysis';

  DataAwsQuicksightAnalysis({
    required super.localName,
    required TfArg<String> analysisId,
    TfArg<String>? awsAccountId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'analysis_id': analysisId,
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `definition` attribute.
  TfRef<List<Map<String, Object?>>> get definition =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'definition');

  /// Reference to `last_published_time` attribute.
  TfRef<String> get lastPublishedTime =>
      TfRef.attribute<String>(this, 'last_published_time');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `permissions` attribute.
  TfRef<List<Map<String, Object?>>> get permissions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'permissions');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `theme_arn` attribute.
  TfRef<String> get themeArn => TfRef.attribute<String>(this, 'theme_arn');
}

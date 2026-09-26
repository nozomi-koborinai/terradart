// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_anomaly_detector`.
const Set<String> _awsCloudwatchLogAnomalyDetectorSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_log_anomaly_detector`.
final class AwsCloudwatchLogAnomalyDetector extends Resource {
  static const String tfType = 'aws_cloudwatch_log_anomaly_detector';

  AwsCloudwatchLogAnomalyDetector({
    required super.localName,
    TfArg<num>? anomalyVisibilityTime,
    TfArg<String>? detectorName,
    required TfArg<bool> enabled,
    TfArg<String>? evaluationFrequency,
    TfArg<String>? filterPattern,
    TfArg<String>? kmsKeyId,
    required TfArg<List<String>> logGroupArnList,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (anomalyVisibilityTime != null)
             'anomaly_visibility_time': anomalyVisibilityTime,
           if (detectorName != null) 'detector_name': detectorName,
           'enabled': enabled,
           if (evaluationFrequency != null)
             'evaluation_frequency': evaluationFrequency,
           if (filterPattern != null) 'filter_pattern': filterPattern,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'log_group_arn_list': logGroupArnList,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogAnomalyDetectorSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}

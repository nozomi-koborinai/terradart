// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_cloudwatch_log_anomaly_detector`.
const Set<String> _awsCloudwatchLogAnomalyDetectorSensitive = <String>{};

/// Cloudwatch Log Anomaly Detector Evaluation enum for `evaluation_frequency`.
extension type const CloudwatchLogAnomalyDetectorEvaluationFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  CloudwatchLogAnomalyDetectorEvaluationFrequency.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchLogAnomalyDetectorEvaluationFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchLogAnomalyDetectorEvaluationFrequency.arg(TfArg<String> arg)
    : this._(arg);

  static const oneMin = CloudwatchLogAnomalyDetectorEvaluationFrequency._(
    TfArgLiteral('ONE_MIN'),
  );
  static const fiveMin = CloudwatchLogAnomalyDetectorEvaluationFrequency._(
    TfArgLiteral('FIVE_MIN'),
  );
  static const tenMin = CloudwatchLogAnomalyDetectorEvaluationFrequency._(
    TfArgLiteral('TEN_MIN'),
  );
  static const fifteenMin = CloudwatchLogAnomalyDetectorEvaluationFrequency._(
    TfArgLiteral('FIFTEEN_MIN'),
  );
  static const thirtyMin = CloudwatchLogAnomalyDetectorEvaluationFrequency._(
    TfArgLiteral('THIRTY_MIN'),
  );
  static const oneHour = CloudwatchLogAnomalyDetectorEvaluationFrequency._(
    TfArgLiteral('ONE_HOUR'),
  );

  static const List<CloudwatchLogAnomalyDetectorEvaluationFrequency> values = [
    oneMin,
    fiveMin,
    tenMin,
    fifteenMin,
    thirtyMin,
    oneHour,
  ];
}

/// Factory wrapper for `aws_cloudwatch_log_anomaly_detector`.
final class AwsCloudwatchLogAnomalyDetector extends Resource {
  static const String tfType = 'aws_cloudwatch_log_anomaly_detector';

  AwsCloudwatchLogAnomalyDetector(
    super.localName, {
    TfArg<num>? anomalyVisibilityTime,
    TfArg<String>? detectorName,
    required TfArg<bool> enabled,
    CloudwatchLogAnomalyDetectorEvaluationFrequency? evaluationFrequency,
    TfArg<String>? filterPattern,
    RefTo<AwsKmsKey>? kmsKeyId,
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
           'anomaly_visibility_time': ?anomalyVisibilityTime,
           'detector_name': ?detectorName,
           'enabled': enabled,
           'evaluation_frequency': ?evaluationFrequency,
           'filter_pattern': ?filterPattern,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'log_group_arn_list': logGroupArnList,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogAnomalyDetectorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogAnomalyDetector>`.
  RefTo<AwsCloudwatchLogAnomalyDetector> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `anomaly_visibility_time` attribute.
  TfRef<num> get anomalyVisibilityTime =>
      TfRef.attribute<num>(this, 'anomaly_visibility_time');

  /// Reference to `detector_name` attribute.
  TfRef<String> get detectorName =>
      TfRef.attribute<String>(this, 'detector_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `evaluation_frequency` attribute.
  TfRef<String> get evaluationFrequency =>
      TfRef.attribute<String>(this, 'evaluation_frequency');

  /// Reference to `filter_pattern` attribute.
  TfRef<String> get filterPattern =>
      TfRef.attribute<String>(this, 'filter_pattern');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `log_group_arn_list` attribute.
  TfRef<List<String>> get logGroupArnList =>
      TfRef.attribute<List<String>>(this, 'log_group_arn_list');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

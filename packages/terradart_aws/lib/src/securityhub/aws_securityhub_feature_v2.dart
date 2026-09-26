// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_feature_v2`.
const Set<String> _awsSecurityhubFeatureV2Sensitive = <String>{};

/// Factory wrapper for `aws_securityhub_feature_v2`.
final class AwsSecurityhubFeatureV2 extends Resource {
  static const String tfType = 'aws_securityhub_feature_v2';

  AwsSecurityhubFeatureV2({
    required super.localName,
    required TfArg<String> featureName,
    required TfArg<String> featureStatus,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'feature_name': featureName,
           'feature_status': featureStatus,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubFeatureV2Sensitive;
}

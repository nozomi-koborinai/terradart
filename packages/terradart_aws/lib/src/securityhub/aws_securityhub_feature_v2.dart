// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_feature_v2`.
const Set<String> _awsSecurityhubFeatureV2Sensitive = <String>{};

/// Securityhub Feature V2 Feature enum for `feature_name`.
enum SecurityhubFeatureV2FeatureName implements TerraformEnum {
  networkScanning('NETWORK_SCANNING');

  const SecurityhubFeatureV2FeatureName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Securityhub Feature V2 Feature enum for `feature_status`.
enum SecurityhubFeatureV2FeatureStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SecurityhubFeatureV2FeatureStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_securityhub_feature_v2`.
final class AwsSecurityhubFeatureV2 extends Resource {
  static const String tfType = 'aws_securityhub_feature_v2';

  AwsSecurityhubFeatureV2(
    super.localName, {
    required TfArg<SecurityhubFeatureV2FeatureName> featureName,
    required TfArg<SecurityhubFeatureV2FeatureStatus> featureStatus,
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubFeatureV2Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubFeatureV2>`.
  RefTo<AwsSecurityhubFeatureV2> get ref => RefTo.of(this);

  /// Reference to `feature_name` attribute.
  TfRef<String> get featureName =>
      TfRef.attribute<String>(this, 'feature_name');

  /// Reference to `feature_status` attribute.
  TfRef<String> get featureStatus =>
      TfRef.attribute<String>(this, 'feature_status');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

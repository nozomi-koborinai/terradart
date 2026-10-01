// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_feature_v2`.
const Set<String> _awsSecurityhubFeatureV2Sensitive = <String>{};

/// Securityhub Feature V2 Feature enum for `feature_name`.
extension type const SecurityhubFeatureV2FeatureName._(TfArg<String> _)
    implements TfArg<String> {
  SecurityhubFeatureV2FeatureName.variable(String name)
    : this._(TfArg.variable(name));
  SecurityhubFeatureV2FeatureName.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityhubFeatureV2FeatureName.arg(TfArg<String> arg) : this._(arg);

  static const networkScanning = SecurityhubFeatureV2FeatureName._(
    TfArgLiteral('NETWORK_SCANNING'),
  );

  static const List<SecurityhubFeatureV2FeatureName> values = [networkScanning];
}

/// Securityhub Feature V2 Feature enum for `feature_status`.
extension type const SecurityhubFeatureV2FeatureStatus._(TfArg<String> _)
    implements TfArg<String> {
  SecurityhubFeatureV2FeatureStatus.variable(String name)
    : this._(TfArg.variable(name));
  SecurityhubFeatureV2FeatureStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityhubFeatureV2FeatureStatus.arg(TfArg<String> arg) : this._(arg);

  static const enabled = SecurityhubFeatureV2FeatureStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SecurityhubFeatureV2FeatureStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SecurityhubFeatureV2FeatureStatus> values = [
    enabled,
    disabled,
  ];
}

/// Factory wrapper for `aws_securityhub_feature_v2`.
final class AwsSecurityhubFeatureV2 extends Resource {
  static const String tfType = 'aws_securityhub_feature_v2';

  AwsSecurityhubFeatureV2(
    super.localName, {
    required SecurityhubFeatureV2FeatureName featureName,
    required SecurityhubFeatureV2FeatureStatus featureStatus,
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

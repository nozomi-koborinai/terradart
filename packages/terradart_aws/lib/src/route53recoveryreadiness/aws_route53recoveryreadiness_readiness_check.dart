// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53recoveryreadiness_readiness_check`.
const Set<String> _awsRoute53recoveryreadinessReadinessCheckSensitive =
    <String>{};

/// Factory wrapper for `aws_route53recoveryreadiness_readiness_check`.
final class AwsRoute53recoveryreadinessReadinessCheck extends Resource {
  static const String tfType = 'aws_route53recoveryreadiness_readiness_check';

  AwsRoute53recoveryreadinessReadinessCheck(
    super.localName, {
    required TfArg<String> readinessCheckName,
    required TfArg<String> resourceSetName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'readiness_check_name': readinessCheckName,
           'resource_set_name': resourceSetName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53recoveryreadinessReadinessCheckSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53recoveryreadinessReadinessCheck>`.
  RefTo<AwsRoute53recoveryreadinessReadinessCheck> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `readiness_check_name` attribute.
  TfRef<String> get readinessCheckName =>
      TfRef.attribute<String>(this, 'readiness_check_name');

  /// Reference to `resource_set_name` attribute.
  TfRef<String> get resourceSetName =>
      TfRef.attribute<String>(this, 'resource_set_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

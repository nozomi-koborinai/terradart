// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_standards_control`.
const Set<String> _awsSecurityhubStandardsControlSensitive = <String>{};

/// Factory wrapper for `aws_securityhub_standards_control`.
final class AwsSecurityhubStandardsControl extends Resource {
  static const String tfType = 'aws_securityhub_standards_control';

  AwsSecurityhubStandardsControl({
    required super.localName,
    required TfArg<String> controlStatus,
    TfArg<String>? disabledReason,
    TfArg<String>? region,
    required TfArg<String> standardsControlArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'control_status': controlStatus,
           if (disabledReason != null) 'disabled_reason': disabledReason,
           if (region != null) 'region': region,
           'standards_control_arn': standardsControlArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubStandardsControlSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `control_id` attribute.
  TfRef<String> get controlId => TfRef.attribute<String>(this, 'control_id');

  /// Reference to `control_status_updated_at` attribute.
  TfRef<String> get controlStatusUpdatedAt =>
      TfRef.attribute<String>(this, 'control_status_updated_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `related_requirements` attribute.
  TfRef<List<String>> get relatedRequirements =>
      TfRef.attribute<List<String>>(this, 'related_requirements');

  /// Reference to `remediation_url` attribute.
  TfRef<String> get remediationUrl =>
      TfRef.attribute<String>(this, 'remediation_url');

  /// Reference to `severity_rating` attribute.
  TfRef<String> get severityRating =>
      TfRef.attribute<String>(this, 'severity_rating');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');
}

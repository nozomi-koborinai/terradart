// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_standards_control_association`.
const Set<String> _awsSecurityhubStandardsControlAssociationSensitive =
    <String>{};

/// Securityhub Standards Control Association Association enum for `association_status`.
enum SecurityhubStandardsControlAssociationAssociationStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SecurityhubStandardsControlAssociationAssociationStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_securityhub_standards_control_association`.
final class AwsSecurityhubStandardsControlAssociation extends Resource {
  static const String tfType = 'aws_securityhub_standards_control_association';

  AwsSecurityhubStandardsControlAssociation({
    required super.localName,
    required TfArg<SecurityhubStandardsControlAssociationAssociationStatus>
    associationStatus,
    TfArg<String>? region,
    required TfArg<String> securityControlId,
    required TfArg<String> standardsArn,
    TfArg<String>? updatedReason,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'association_status': associationStatus,
           'region': ?region,
           'security_control_id': securityControlId,
           'standards_arn': standardsArn,
           'updated_reason': ?updatedReason,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSecurityhubStandardsControlAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubStandardsControlAssociation>`.
  RefTo<AwsSecurityhubStandardsControlAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `association_status` attribute.
  TfRef<String> get associationStatusRef =>
      TfRef.attribute<String>(this, 'association_status');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_control_id` attribute.
  TfRef<String> get securityControlIdRef =>
      TfRef.attribute<String>(this, 'security_control_id');

  /// Reference to `standards_arn` attribute.
  TfRef<String> get standardsArnRef =>
      TfRef.attribute<String>(this, 'standards_arn');

  /// Reference to `updated_reason` attribute.
  TfRef<String> get updatedReasonRef =>
      TfRef.attribute<String>(this, 'updated_reason');
}

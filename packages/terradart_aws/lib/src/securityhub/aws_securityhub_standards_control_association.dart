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
           if (region != null) 'region': region,
           'security_control_id': securityControlId,
           'standards_arn': standardsArn,
           if (updatedReason != null) 'updated_reason': updatedReason,
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
}

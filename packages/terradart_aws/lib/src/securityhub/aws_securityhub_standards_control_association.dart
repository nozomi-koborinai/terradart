// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_standards_control_association`.
const Set<String> _awsSecurityhubStandardsControlAssociationSensitive =
    <String>{};

/// Securityhub Standards Control Association enum for `association_status`.
extension type const SecurityhubStandardsControlAssociationStatus._(
  TfArg<String> _
) implements TfArg<String> {
  SecurityhubStandardsControlAssociationStatus.variable(String name)
    : this._(TfArg.variable(name));
  SecurityhubStandardsControlAssociationStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityhubStandardsControlAssociationStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SecurityhubStandardsControlAssociationStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SecurityhubStandardsControlAssociationStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SecurityhubStandardsControlAssociationStatus> values = [
    enabled,
    disabled,
  ];
}

/// Factory wrapper for `aws_securityhub_standards_control_association`.
final class AwsSecurityhubStandardsControlAssociation extends Resource {
  static const String tfType = 'aws_securityhub_standards_control_association';

  AwsSecurityhubStandardsControlAssociation(
    super.localName, {
    required SecurityhubStandardsControlAssociationStatus associationStatus,
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
  TfRef<String> get associationStatus =>
      TfRef.attribute<String>(this, 'association_status');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_control_id` attribute.
  TfRef<String> get securityControlId =>
      TfRef.attribute<String>(this, 'security_control_id');

  /// Reference to `standards_arn` attribute.
  TfRef<String> get standardsArn =>
      TfRef.attribute<String>(this, 'standards_arn');

  /// Reference to `updated_reason` attribute.
  TfRef<String> get updatedReason =>
      TfRef.attribute<String>(this, 'updated_reason');
}

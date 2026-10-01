// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_application_assignment`.
const Set<String> _awsSsoadminApplicationAssignmentSensitive = <String>{};

/// Ssoadmin Application Assignment Principal enum for `principal_type`.
extension type const SsoadminApplicationAssignmentPrincipalType._(
  TfArg<String> _
) implements TfArg<String> {
  SsoadminApplicationAssignmentPrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  SsoadminApplicationAssignmentPrincipalType.expression(String template)
    : this._(TfArg.expression(template));
  const SsoadminApplicationAssignmentPrincipalType.arg(TfArg<String> arg)
    : this._(arg);

  static const user = SsoadminApplicationAssignmentPrincipalType._(
    TfArgLiteral('USER'),
  );
  static const group = SsoadminApplicationAssignmentPrincipalType._(
    TfArgLiteral('GROUP'),
  );

  static const List<SsoadminApplicationAssignmentPrincipalType> values = [
    user,
    group,
  ];
}

/// Factory wrapper for `aws_ssoadmin_application_assignment`.
final class AwsSsoadminApplicationAssignment extends Resource {
  static const String tfType = 'aws_ssoadmin_application_assignment';

  AwsSsoadminApplicationAssignment(
    super.localName, {
    required TfArg<String> applicationArn,
    required TfArg<String> principalId,
    required SsoadminApplicationAssignmentPrincipalType principalType,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_arn': applicationArn,
           'principal_id': principalId,
           'principal_type': principalType,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminApplicationAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsoadminApplicationAssignment>`.
  RefTo<AwsSsoadminApplicationAssignment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_arn` attribute.
  TfRef<String> get applicationArn =>
      TfRef.attribute<String>(this, 'application_arn');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalType =>
      TfRef.attribute<String>(this, 'principal_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

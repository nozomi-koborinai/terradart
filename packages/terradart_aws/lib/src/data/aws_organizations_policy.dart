// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../organizations/aws_organizations_policy.dart';

/// Sensitive field paths for `aws_organizations_policy`.
const Set<String> _awsOrganizationsPolicySensitive = <String>{};

/// Factory wrapper for `aws_organizations_policy`.
final class DataAwsOrganizationsPolicy extends Data {
  static const String tfType = 'aws_organizations_policy';

  DataAwsOrganizationsPolicy(
    super.localName, {
    required TfArg<String> policyId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'policy_id': policyId});

  @override
  Set<String> get sensitiveFields => _awsOrganizationsPolicySensitive;

  /// A reference to the `aws_organizations_policy` this data source reads, for
  /// arguments typed `RefTo<AwsOrganizationsPolicy>`.
  RefTo<AwsOrganizationsPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_managed` attribute.
  TfRef<bool> get awsManaged => TfRef.attribute<bool>(this, 'aws_managed');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../opensearchserverless/aws_opensearchserverless_access_policy.dart';

/// Sensitive field paths for `aws_opensearchserverless_access_policy`.
const Set<String> _awsOpensearchserverlessAccessPolicySensitive = <String>{};

/// Factory wrapper for `aws_opensearchserverless_access_policy`.
final class DataAwsOpensearchserverlessAccessPolicy extends Data {
  static const String tfType = 'aws_opensearchserverless_access_policy';

  DataAwsOpensearchserverlessAccessPolicy(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, 'type': type},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessAccessPolicySensitive;

  /// A reference to the `aws_opensearchserverless_access_policy` this data source reads, for
  /// arguments typed `RefTo<AwsOpensearchserverlessAccessPolicy>`.
  RefTo<AwsOpensearchserverlessAccessPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `policy_version` attribute.
  TfRef<String> get policyVersion =>
      TfRef.attribute<String>(this, 'policy_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

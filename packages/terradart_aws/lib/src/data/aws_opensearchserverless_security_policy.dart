// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../opensearchserverless/aws_opensearchserverless_security_policy.dart';

/// Sensitive field paths for `aws_opensearchserverless_security_policy`.
const Set<String> _awsOpensearchserverlessSecurityPolicySensitive = <String>{};

/// Factory wrapper for `aws_opensearchserverless_security_policy`.
final class DataAwsOpensearchserverlessSecurityPolicy extends Data {
  static const String tfType = 'aws_opensearchserverless_security_policy';

  DataAwsOpensearchserverlessSecurityPolicy({
    required super.localName,
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
      _awsOpensearchserverlessSecurityPolicySensitive;

  /// A reference to the `aws_opensearchserverless_security_policy` this data source reads, for
  /// arguments typed `RefTo<AwsOpensearchserverlessSecurityPolicy>`.
  RefTo<AwsOpensearchserverlessSecurityPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `last_modified_date` attribute.
  TfRef<String> get lastModifiedDate =>
      TfRef.attribute<String>(this, 'last_modified_date');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `policy_version` attribute.
  TfRef<String> get policyVersion =>
      TfRef.attribute<String>(this, 'policy_version');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_access_policy`.
const Set<String> _awsOpensearchserverlessAccessPolicySensitive = <String>{};

/// Factory wrapper for `aws_opensearchserverless_access_policy`.
final class AwsOpensearchserverlessAccessPolicy extends Resource {
  static const String tfType = 'aws_opensearchserverless_access_policy';

  AwsOpensearchserverlessAccessPolicy({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           'policy': policy,
           if (region != null) 'region': region,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessAccessPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_version` attribute.
  TfRef<String> get policyVersion =>
      TfRef.attribute<String>(this, 'policy_version');
}

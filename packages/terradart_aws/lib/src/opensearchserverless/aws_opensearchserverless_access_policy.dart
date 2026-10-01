// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_access_policy`.
const Set<String> _awsOpensearchserverlessAccessPolicySensitive = <String>{};

/// Opensearchserverless Access Policy enum for `type`.
extension type const OpensearchserverlessAccessPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchserverlessAccessPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchserverlessAccessPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchserverlessAccessPolicyType.arg(TfArg<String> arg)
    : this._(arg);

  static const data = OpensearchserverlessAccessPolicyType._(
    TfArgLiteral('data'),
  );

  static const List<OpensearchserverlessAccessPolicyType> values = [data];
}

/// Factory wrapper for `aws_opensearchserverless_access_policy`.
final class AwsOpensearchserverlessAccessPolicy extends Resource {
  static const String tfType = 'aws_opensearchserverless_access_policy';

  AwsOpensearchserverlessAccessPolicy(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> policy,
    TfArg<String>? region,
    required OpensearchserverlessAccessPolicyType type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'policy': policy,
           'region': ?region,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessAccessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOpensearchserverlessAccessPolicy>`.
  RefTo<AwsOpensearchserverlessAccessPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_version` attribute.
  TfRef<String> get policyVersion =>
      TfRef.attribute<String>(this, 'policy_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

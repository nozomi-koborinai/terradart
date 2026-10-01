// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_security_policy`.
const Set<String> _awsOpensearchserverlessSecurityPolicySensitive = <String>{};

/// Opensearchserverless Security Policy enum for `type`.
extension type const OpensearchserverlessSecurityPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  OpensearchserverlessSecurityPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchserverlessSecurityPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchserverlessSecurityPolicyType.arg(TfArg<String> arg)
    : this._(arg);

  static const encryption = OpensearchserverlessSecurityPolicyType._(
    TfArgLiteral('encryption'),
  );
  static const network = OpensearchserverlessSecurityPolicyType._(
    TfArgLiteral('network'),
  );

  static const List<OpensearchserverlessSecurityPolicyType> values = [
    encryption,
    network,
  ];
}

/// Factory wrapper for `aws_opensearchserverless_security_policy`.
final class AwsOpensearchserverlessSecurityPolicy extends Resource {
  static const String tfType = 'aws_opensearchserverless_security_policy';

  AwsOpensearchserverlessSecurityPolicy(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> policy,
    TfArg<String>? region,
    required OpensearchserverlessSecurityPolicyType type,
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
      _awsOpensearchserverlessSecurityPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOpensearchserverlessSecurityPolicy>`.
  RefTo<AwsOpensearchserverlessSecurityPolicy> get ref => RefTo.of(this);

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

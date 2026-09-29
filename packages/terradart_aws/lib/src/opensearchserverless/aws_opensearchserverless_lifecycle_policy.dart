// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_lifecycle_policy`.
const Set<String> _awsOpensearchserverlessLifecyclePolicySensitive = <String>{};

/// Opensearchserverless Lifecycle Policy enum for `type`.
enum OpensearchserverlessLifecyclePolicyType implements TerraformEnum {
  retention('retention');

  const OpensearchserverlessLifecyclePolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_opensearchserverless_lifecycle_policy`.
final class AwsOpensearchserverlessLifecyclePolicy extends Resource {
  static const String tfType = 'aws_opensearchserverless_lifecycle_policy';

  AwsOpensearchserverlessLifecyclePolicy({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<OpensearchserverlessLifecyclePolicyType> type,
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
      _awsOpensearchserverlessLifecyclePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOpensearchserverlessLifecyclePolicy>`.
  RefTo<AwsOpensearchserverlessLifecyclePolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_version` attribute.
  TfRef<String> get policyVersion =>
      TfRef.attribute<String>(this, 'policy_version');
}

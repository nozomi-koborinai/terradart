// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_security_group`.
const Set<String> _awsSecurityGroupSensitive = <String>{};

/// Factory wrapper for `aws_security_group`.
final class AwsSecurityGroup extends Resource {
  static const String tfType = 'aws_security_group';

  AwsSecurityGroup({
    required super.localName,
    TfArg<String>? description,
    TfArg<List<Map<String, Object?>>>? egress,
    TfArg<List<Map<String, Object?>>>? ingress,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    TfArg<bool>? revokeRulesOnDelete,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (egress != null) 'egress': egress,
           if (ingress != null) 'ingress': ingress,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (revokeRulesOnDelete != null)
             'revoke_rules_on_delete': revokeRulesOnDelete,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}

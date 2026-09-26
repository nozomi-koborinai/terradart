// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_default_security_group`.
const Set<String> _awsDefaultSecurityGroupSensitive = <String>{};

/// Factory wrapper for `aws_default_security_group`.
final class AwsDefaultSecurityGroup extends Resource {
  static const String tfType = 'aws_default_security_group';

  AwsDefaultSecurityGroup({
    required super.localName,
    TfArg<List<Map<String, Object?>>>? egress,
    TfArg<List<Map<String, Object?>>>? ingress,
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
           if (egress != null) 'egress': egress,
           if (ingress != null) 'ingress': ingress,
           if (region != null) 'region': region,
           if (revokeRulesOnDelete != null)
             'revoke_rules_on_delete': revokeRulesOnDelete,
           if (tags != null) 'tags': tags,
           if (vpcId != null) 'vpc_id': vpcId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDefaultSecurityGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');
}

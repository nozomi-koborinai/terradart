// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_security_group`.
const Set<String> _awsSecurityGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_security_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class SecurityGroupName {
  const SecurityGroupName();

  /// Sets `name`.
  const factory SecurityGroupName.name(TfArg<String> name) =
      SecurityGroupNameName;

  /// Sets `name_prefix`.
  const factory SecurityGroupName.namePrefix(TfArg<String> namePrefix) =
      SecurityGroupNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SecurityGroupName.name] choice: sets `name`.
final class SecurityGroupNameName extends SecurityGroupName {
  const SecurityGroupNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SecurityGroupName.namePrefix] choice: sets `name_prefix`.
final class SecurityGroupNameNamePrefix extends SecurityGroupName {
  const SecurityGroupNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_security_group`.
final class AwsSecurityGroup extends Resource {
  static const String tfType = 'aws_security_group';

  AwsSecurityGroup({
    required super.localName,
    TfArg<String>? description,
    TfArg<List<Map<String, Object?>>>? egress,
    TfArg<List<Map<String, Object?>>>? ingress,
    SecurityGroupName? name,
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
           ...?name?.argMap,
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

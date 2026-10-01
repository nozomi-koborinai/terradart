// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_vpc.dart' show AwsVpc;

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
      SecurityGroupNameChoice;

  /// Sets `name_prefix`.
  const factory SecurityGroupName.namePrefix(TfArg<String> namePrefix) =
      SecurityGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SecurityGroupName.name] choice: sets `name`.
final class SecurityGroupNameChoice extends SecurityGroupName {
  const SecurityGroupNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [SecurityGroupName.namePrefix] choice: sets `name_prefix`.
final class SecurityGroupNamePrefix extends SecurityGroupName {
  const SecurityGroupNamePrefix(this.namePrefix);

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

  AwsSecurityGroup(
    super.localName, {
    TfArg<String>? description,
    TfArg<List<Map<String, Object?>>>? egress,
    TfArg<List<Map<String, Object?>>>? ingress,
    SecurityGroupName? name,
    TfArg<String>? region,
    TfArg<bool>? revokeRulesOnDelete,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsVpc>? vpcId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'egress': ?egress,
           'ingress': ?ingress,
           ...?name?.argMap,
           'region': ?region,
           'revoke_rules_on_delete': ?revokeRulesOnDelete,
           'tags': ?tags,
           'vpc_id': ?vpcId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityGroup>`.
  RefTo<AwsSecurityGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `egress` attribute.
  TfRef<List<Map<String, Object?>>> get egress =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'egress');

  /// Reference to `ingress` attribute.
  TfRef<List<Map<String, Object?>>> get ingress =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ingress');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `revoke_rules_on_delete` attribute.
  TfRef<bool> get revokeRulesOnDelete =>
      TfRef.attribute<bool>(this, 'revoke_rules_on_delete');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}

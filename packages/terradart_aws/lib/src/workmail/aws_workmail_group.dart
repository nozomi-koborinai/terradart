// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workmail_group`.
const Set<String> _awsWorkmailGroupSensitive = <String>{};

/// Factory wrapper for `aws_workmail_group`.
final class AwsWorkmailGroup extends Resource {
  static const String tfType = 'aws_workmail_group';

  AwsWorkmailGroup(
    super.localName, {
    required TfArg<String> email,
    TfArg<bool>? hiddenFromGlobalAddressList,
    required TfArg<String> name,
    required TfArg<String> organizationId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'email': email,
           'hidden_from_global_address_list': ?hiddenFromGlobalAddressList,
           'name': name,
           'organization_id': organizationId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkmailGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkmailGroup>`.
  RefTo<AwsWorkmailGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `disabled_date` attribute.
  TfRef<String> get disabledDate =>
      TfRef.attribute<String>(this, 'disabled_date');

  /// Reference to `enabled_date` attribute.
  TfRef<String> get enabledDate =>
      TfRef.attribute<String>(this, 'enabled_date');

  /// Reference to `group_id` attribute.
  TfRef<String> get groupId => TfRef.attribute<String>(this, 'group_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `hidden_from_global_address_list` attribute.
  TfRef<bool> get hiddenFromGlobalAddressList =>
      TfRef.attribute<bool>(this, 'hidden_from_global_address_list');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

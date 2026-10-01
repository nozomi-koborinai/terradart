// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_synthetics_group_association`.
const Set<String> _awsSyntheticsGroupAssociationSensitive = <String>{};

/// Factory wrapper for `aws_synthetics_group_association`.
final class AwsSyntheticsGroupAssociation extends Resource {
  static const String tfType = 'aws_synthetics_group_association';

  AwsSyntheticsGroupAssociation(
    super.localName, {
    required TfArg<String> canaryArn,
    required TfArg<String> groupName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'canary_arn': canaryArn,
           'group_name': groupName,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSyntheticsGroupAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSyntheticsGroupAssociation>`.
  RefTo<AwsSyntheticsGroupAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `group_arn` attribute.
  TfRef<String> get groupArn => TfRef.attribute<String>(this, 'group_arn');

  /// Reference to `group_id` attribute.
  TfRef<String> get groupId => TfRef.attribute<String>(this, 'group_id');

  /// Reference to `canary_arn` attribute.
  TfRef<String> get canaryArn => TfRef.attribute<String>(this, 'canary_arn');

  /// Reference to `group_name` attribute.
  TfRef<String> get groupName => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

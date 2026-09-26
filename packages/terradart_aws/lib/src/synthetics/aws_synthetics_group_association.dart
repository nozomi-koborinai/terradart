// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_synthetics_group_association`.
const Set<String> _awsSyntheticsGroupAssociationSensitive = <String>{};

/// Factory wrapper for `aws_synthetics_group_association`.
final class AwsSyntheticsGroupAssociation extends Resource {
  static const String tfType = 'aws_synthetics_group_association';

  AwsSyntheticsGroupAssociation({
    required super.localName,
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
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSyntheticsGroupAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `group_arn` attribute.
  TfRef<String> get groupArn => TfRef.attribute<String>(this, 'group_arn');

  /// Reference to `group_id` attribute.
  TfRef<String> get groupId => TfRef.attribute<String>(this, 'group_id');
}

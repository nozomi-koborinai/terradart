// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_group`.
const Set<String> _awsQuicksightGroupSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_group`.
final class AwsQuicksightGroup extends Resource {
  static const String tfType = 'aws_quicksight_group';

  AwsQuicksightGroup({
    required super.localName,
    TfArg<String>? awsAccountId,
    TfArg<String>? description,
    required TfArg<String> groupName,
    TfArg<String>? namespace,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'description': ?description,
           'group_name': groupName,
           'namespace': ?namespace,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightGroup>`.
  RefTo<AwsQuicksightGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountIdRef =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `group_name` attribute.
  TfRef<String> get groupNameRef => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespaceRef => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}

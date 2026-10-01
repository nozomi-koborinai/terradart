// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../quicksight/aws_quicksight_group.dart';

/// Sensitive field paths for `aws_quicksight_group`.
const Set<String> _awsQuicksightGroupSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_group`.
final class DataAwsQuicksightGroup extends Data {
  static const String tfType = 'aws_quicksight_group';

  DataAwsQuicksightGroup({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> groupName,
    TfArg<String>? namespace,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'group_name': groupName,
           'namespace': ?namespace,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightGroupSensitive;

  /// A reference to the `aws_quicksight_group` this data source reads, for
  /// arguments typed `RefTo<AwsQuicksightGroup>`.
  RefTo<AwsQuicksightGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `group_name` attribute.
  TfRef<String> get groupName => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

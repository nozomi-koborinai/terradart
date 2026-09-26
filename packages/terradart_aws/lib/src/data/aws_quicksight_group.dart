// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'group_name': groupName,
           if (namespace != null) 'namespace': namespace,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');
}

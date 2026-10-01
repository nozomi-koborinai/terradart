// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cloudwatch/aws_cloudwatch_event_connection.dart';

/// Sensitive field paths for `aws_cloudwatch_event_connection`.
const Set<String> _awsCloudwatchEventConnectionSensitive = <String>{};

/// Factory wrapper for `aws_cloudwatch_event_connection`.
final class DataAwsCloudwatchEventConnection extends Data {
  static const String tfType = 'aws_cloudwatch_event_connection';

  DataAwsCloudwatchEventConnection(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventConnectionSensitive;

  /// A reference to the `aws_cloudwatch_event_connection` this data source reads, for
  /// arguments typed `RefTo<AwsCloudwatchEventConnection>`.
  RefTo<AwsCloudwatchEventConnection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `authorization_type` attribute.
  TfRef<String> get authorizationType =>
      TfRef.attribute<String>(this, 'authorization_type');

  /// Reference to `kms_key_identifier` attribute.
  TfRef<String> get kmsKeyIdentifier =>
      TfRef.attribute<String>(this, 'kms_key_identifier');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArn => TfRef.attribute<String>(this, 'secret_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

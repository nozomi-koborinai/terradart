// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../codestarconnections/aws_codestarconnections_connection.dart';

/// Sensitive field paths for `aws_codestarconnections_connection`.
const Set<String> _awsCodestarconnectionsConnectionSensitive = <String>{};

/// Factory wrapper for `aws_codestarconnections_connection`.
final class DataAwsCodestarconnectionsConnection extends Data {
  static const String tfType = 'aws_codestarconnections_connection';

  DataAwsCodestarconnectionsConnection({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': ?arn, 'name': ?name, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsCodestarconnectionsConnectionSensitive;

  /// A reference to the `aws_codestarconnections_connection` this data source reads, for
  /// arguments typed `RefTo<AwsCodestarconnectionsConnection>`.
  RefTo<AwsCodestarconnectionsConnection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_status` attribute.
  TfRef<String> get connectionStatus =>
      TfRef.attribute<String>(this, 'connection_status');

  /// Reference to `host_arn` attribute.
  TfRef<String> get hostArn => TfRef.attribute<String>(this, 'host_arn');

  /// Reference to `provider_type` attribute.
  TfRef<String> get providerType =>
      TfRef.attribute<String>(this, 'provider_type');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

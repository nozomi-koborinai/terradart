// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iam/aws_iam_openid_connect_provider.dart';

/// Sensitive field paths for `aws_iam_openid_connect_provider`.
const Set<String> _awsIamOpenidConnectProviderSensitive = <String>{};

/// Factory wrapper for `aws_iam_openid_connect_provider`.
final class DataAwsIamOpenidConnectProvider extends Data {
  static const String tfType = 'aws_iam_openid_connect_provider';

  DataAwsIamOpenidConnectProvider(
    super.localName, {
    TfArg<String>? arn,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? url,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': ?arn, 'tags': ?tags, 'url': ?url},
       );

  @override
  Set<String> get sensitiveFields => _awsIamOpenidConnectProviderSensitive;

  /// A reference to the `aws_iam_openid_connect_provider` this data source reads, for
  /// arguments typed `RefTo<AwsIamOpenidConnectProvider>`.
  RefTo<AwsIamOpenidConnectProvider> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id_list` attribute.
  TfRef<List<String>> get clientIdList =>
      TfRef.attribute<List<String>>(this, 'client_id_list');

  /// Reference to `thumbprint_list` attribute.
  TfRef<List<String>> get thumbprintList =>
      TfRef.attribute<List<String>>(this, 'thumbprint_list');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}

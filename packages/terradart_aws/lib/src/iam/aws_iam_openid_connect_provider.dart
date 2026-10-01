// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_openid_connect_provider`.
const Set<String> _awsIamOpenidConnectProviderSensitive = <String>{};

/// Factory wrapper for `aws_iam_openid_connect_provider`.
final class AwsIamOpenidConnectProvider extends Resource {
  static const String tfType = 'aws_iam_openid_connect_provider';

  AwsIamOpenidConnectProvider({
    required super.localName,
    required TfArg<List<String>> clientIdList,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? thumbprintList,
    required TfArg<String> url,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_id_list': clientIdList,
           'tags': ?tags,
           'thumbprint_list': ?thumbprintList,
           'url': url,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamOpenidConnectProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamOpenidConnectProvider>`.
  RefTo<AwsIamOpenidConnectProvider> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `client_id_list` attribute.
  TfRef<List<String>> get clientIdList =>
      TfRef.attribute<List<String>>(this, 'client_id_list');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `thumbprint_list` attribute.
  TfRef<List<String>> get thumbprintList =>
      TfRef.attribute<List<String>>(this, 'thumbprint_list');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}

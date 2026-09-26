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
           if (tags != null) 'tags': tags,
           if (thumbprintList != null) 'thumbprint_list': thumbprintList,
           'url': url,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamOpenidConnectProviderSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_openid_connect_provider`.
const Set<String> _awsIamOpenidConnectProviderSensitive = <String>{};

/// Factory wrapper for `aws_iam_openid_connect_provider`.
final class DataAwsIamOpenidConnectProvider extends Data {
  static const String tfType = 'aws_iam_openid_connect_provider';

  DataAwsIamOpenidConnectProvider({
    required super.localName,
    TfArg<String>? arn,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? url,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (tags != null) 'tags': tags,
           if (url != null) 'url': url,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamOpenidConnectProviderSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_id_list` attribute.
  TfRef<List<String>> get clientIdList =>
      TfRef.attribute<List<String>>(this, 'client_id_list');

  /// Reference to `thumbprint_list` attribute.
  TfRef<List<String>> get thumbprintList =>
      TfRef.attribute<List<String>>(this, 'thumbprint_list');
}

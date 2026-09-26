// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codebuild_source_credential`.
const Set<String> _awsCodebuildSourceCredentialSensitive = <String>{'token'};

/// Factory wrapper for `aws_codebuild_source_credential`.
final class AwsCodebuildSourceCredential extends Resource {
  static const String tfType = 'aws_codebuild_source_credential';

  AwsCodebuildSourceCredential({
    required super.localName,
    required TfArg<String> authType,
    TfArg<String>? region,
    required TfArg<String> serverType,
    required TfArg<String> token,
    TfArg<String>? userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auth_type': authType,
           if (region != null) 'region': region,
           'server_type': serverType,
           'token': token,
           if (userName != null) 'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodebuildSourceCredentialSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

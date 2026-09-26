// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codestarconnections_connection`.
const Set<String> _awsCodestarconnectionsConnectionSensitive = <String>{};

/// Factory wrapper for `aws_codestarconnections_connection`.
final class AwsCodestarconnectionsConnection extends Resource {
  static const String tfType = 'aws_codestarconnections_connection';

  AwsCodestarconnectionsConnection({
    required super.localName,
    TfArg<String>? hostArn,
    required TfArg<String> name,
    TfArg<String>? providerType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (hostArn != null) 'host_arn': hostArn,
           'name': name,
           if (providerType != null) 'provider_type': providerType,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodestarconnectionsConnectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connection_status` attribute.
  TfRef<String> get connectionStatus =>
      TfRef.attribute<String>(this, 'connection_status');
}

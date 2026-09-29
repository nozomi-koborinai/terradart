// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_api_key`.
const Set<String> _awsAppsyncApiKeySensitive = <String>{'key'};

/// Factory wrapper for `aws_appsync_api_key`.
final class AwsAppsyncApiKey extends Resource {
  static const String tfType = 'aws_appsync_api_key';

  AwsAppsyncApiKey({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? description,
    TfArg<String>? expires,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           'description': ?description,
           'expires': ?expires,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncApiKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppsyncApiKey>`.
  RefTo<AwsAppsyncApiKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_key_id` attribute.
  TfRef<String> get apiKeyId => TfRef.attribute<String>(this, 'api_key_id');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');
}

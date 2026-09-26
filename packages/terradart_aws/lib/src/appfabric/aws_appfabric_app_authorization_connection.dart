// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appfabric_app_authorization_connection`.
const Set<String> _awsAppfabricAppAuthorizationConnectionSensitive = <String>{};

/// Typed helper for the `auth_request` block of
/// `aws_appfabric_app_authorization_connection` (derived from provider schema).
@immutable
final class AppfabricAppAuthorizationConnectionAuthRequest {
  const AppfabricAppAuthorizationConnectionAuthRequest({
    required this.code,
    required this.redirectUri,
  });

  final TfArg<String> code;

  final TfArg<String> redirectUri;

  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'redirect_uri': redirectUri.toTfJson(),
  };
}

/// Factory wrapper for `aws_appfabric_app_authorization_connection`.
final class AwsAppfabricAppAuthorizationConnection extends Resource {
  static const String tfType = 'aws_appfabric_app_authorization_connection';

  AwsAppfabricAppAuthorizationConnection({
    required super.localName,
    required TfArg<String> appAuthorizationArn,
    required TfArg<String> appBundleArn,
    TfArg<String>? region,
    List<AppfabricAppAuthorizationConnectionAuthRequest>? authRequest,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_authorization_arn': appAuthorizationArn,
           'app_bundle_arn': appBundleArn,
           if (region != null) 'region': region,
           if (authRequest != null)
             'auth_request': TfArg.literal([
               for (final e in authRequest) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAppfabricAppAuthorizationConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app` attribute.
  TfRef<String> get app => TfRef.attribute<String>(this, 'app');

  /// Reference to `tenant` attribute.
  TfRef<List<Map<String, Object?>>> get tenant =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tenant');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_calls_sfu_app`.
const Set<String> _cloudflareCallsSfuAppSensitive = <String>{'secret'};

/// Factory wrapper for `cloudflare_calls_sfu_app`.
///
/// Accepted Permissions
///
/// - `Calls Read` - `Calls Write`
final class CloudflareCallsSfuApp extends Resource {
  static const String tfType = 'cloudflare_calls_sfu_app';

  CloudflareCallsSfuApp({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? appId,
    TfArg<String>? name,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (appId != null) 'app_id': appId,
           if (name != null) 'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCallsSfuAppSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_cloudforce_one_request`.
const Set<String> _cloudflareCloudforceOneRequestSensitive = <String>{};

/// Cloudforce One Request enum for `tlp`.
enum CloudforceOneRequestTlp implements TerraformEnum {
  clear('clear'),
  amber('amber'),
  amberStrict('amber-strict'),
  green('green'),
  red('red');

  const CloudforceOneRequestTlp(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_cloudforce_one_request`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Read` - `Cloudforce One Write`
final class CloudflareCloudforceOneRequest extends Resource {
  static const String tfType = 'cloudflare_cloudforce_one_request';

  CloudflareCloudforceOneRequest({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? content,
    TfArg<String>? priority,
    TfArg<String>? requestType,
    TfArg<String>? summary,
    TfArg<CloudforceOneRequestTlp>? tlp,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'content': ?content,
           'priority': ?priority,
           'request_type': ?requestType,
           'summary': ?summary,
           'tlp': ?tlp,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCloudforceOneRequestSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCloudforceOneRequest>`.
  RefTo<CloudflareCloudforceOneRequest> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `completed` attribute.
  TfRef<String> get completed => TfRef.attribute<String>(this, 'completed');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `message_tokens` attribute.
  TfRef<num> get messageTokens => TfRef.attribute<num>(this, 'message_tokens');

  /// Reference to `readable_id` attribute.
  TfRef<String> get readableId => TfRef.attribute<String>(this, 'readable_id');

  /// Reference to `request` attribute.
  TfRef<String> get request => TfRef.attribute<String>(this, 'request');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tokens` attribute.
  TfRef<num> get tokens => TfRef.attribute<num>(this, 'tokens');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');
}

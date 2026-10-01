// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_cloudforce_one_request`.
const Set<String> _cloudflareCloudforceOneRequestSensitive = <String>{};

/// Cloudforce One Request enum for `tlp`.
extension type const CloudforceOneRequestTlp._(TfArg<String> _)
    implements TfArg<String> {
  CloudforceOneRequestTlp.variable(String name) : this._(TfArg.variable(name));
  CloudforceOneRequestTlp.expression(String template)
    : this._(TfArg.expression(template));
  const CloudforceOneRequestTlp.arg(TfArg<String> arg) : this._(arg);

  static const clear = CloudforceOneRequestTlp._(TfArgLiteral('clear'));
  static const amber = CloudforceOneRequestTlp._(TfArgLiteral('amber'));
  static const amberStrict = CloudforceOneRequestTlp._(
    TfArgLiteral('amber-strict'),
  );
  static const green = CloudforceOneRequestTlp._(TfArgLiteral('green'));
  static const red = CloudforceOneRequestTlp._(TfArgLiteral('red'));

  static const List<CloudforceOneRequestTlp> values = [
    clear,
    amber,
    amberStrict,
    green,
    red,
  ];
}

/// Factory wrapper for `cloudflare_cloudforce_one_request`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Read` - `Cloudforce One Write`
final class CloudflareCloudforceOneRequest extends Resource {
  static const String tfType = 'cloudflare_cloudforce_one_request';

  CloudflareCloudforceOneRequest(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? content,
    TfArg<String>? priority,
    TfArg<String>? requestType,
    TfArg<String>? summary,
    CloudforceOneRequestTlp? tlp,
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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `priority` attribute.
  TfRef<String> get priority => TfRef.attribute<String>(this, 'priority');

  /// Reference to `request_type` attribute.
  TfRef<String> get requestType =>
      TfRef.attribute<String>(this, 'request_type');

  /// Reference to `summary` attribute.
  TfRef<String> get summary => TfRef.attribute<String>(this, 'summary');

  /// Reference to `tlp` attribute.
  TfRef<String> get tlp => TfRef.attribute<String>(this, 'tlp');
}

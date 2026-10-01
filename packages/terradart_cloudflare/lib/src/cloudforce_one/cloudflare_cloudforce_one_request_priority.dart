// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_cloudforce_one_request_priority`.
const Set<String> _cloudflareCloudforceOneRequestPrioritySensitive = <String>{};

/// Cloudforce One Request Priority enum for `tlp`.
extension type const CloudforceOneRequestPriorityTlp._(TfArg<String> _)
    implements TfArg<String> {
  CloudforceOneRequestPriorityTlp.variable(String name)
    : this._(TfArg.variable(name));
  CloudforceOneRequestPriorityTlp.expression(String template)
    : this._(TfArg.expression(template));
  const CloudforceOneRequestPriorityTlp.arg(TfArg<String> arg) : this._(arg);

  static const clear = CloudforceOneRequestPriorityTlp._(TfArgLiteral('clear'));
  static const amber = CloudforceOneRequestPriorityTlp._(TfArgLiteral('amber'));
  static const amberStrict = CloudforceOneRequestPriorityTlp._(
    TfArgLiteral('amber-strict'),
  );
  static const green = CloudforceOneRequestPriorityTlp._(TfArgLiteral('green'));
  static const red = CloudforceOneRequestPriorityTlp._(TfArgLiteral('red'));

  static const List<CloudforceOneRequestPriorityTlp> values = [
    clear,
    amber,
    amberStrict,
    green,
    red,
  ];
}

/// Factory wrapper for `cloudflare_cloudforce_one_request_priority`.
///
/// Accepted Permissions
///
/// - `Cloudforce One Read` - `Cloudforce One Write`
final class CloudflareCloudforceOneRequestPriority extends Resource {
  static const String tfType = 'cloudflare_cloudforce_one_request_priority';

  CloudflareCloudforceOneRequestPriority(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<List<String>> labels,
    required TfArg<num> priority,
    required TfArg<String> requirement,
    required CloudforceOneRequestPriorityTlp tlp,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'labels': labels,
           'priority': priority,
           'requirement': requirement,
           'tlp': tlp,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCloudforceOneRequestPrioritySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCloudforceOneRequestPriority>`.
  RefTo<CloudflareCloudforceOneRequestPriority> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `completed` attribute.
  TfRef<String> get completed => TfRef.attribute<String>(this, 'completed');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

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

  /// Reference to `summary` attribute.
  TfRef<String> get summary => TfRef.attribute<String>(this, 'summary');

  /// Reference to `tokens` attribute.
  TfRef<num> get tokens => TfRef.attribute<num>(this, 'tokens');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `labels` attribute.
  TfRef<List<String>> get labels =>
      TfRef.attribute<List<String>>(this, 'labels');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `requirement` attribute.
  TfRef<String> get requirement => TfRef.attribute<String>(this, 'requirement');

  /// Reference to `tlp` attribute.
  TfRef<String> get tlp => TfRef.attribute<String>(this, 'tlp');
}

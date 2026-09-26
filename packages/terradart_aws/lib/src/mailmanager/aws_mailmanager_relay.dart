// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mailmanager_relay`.
const Set<String> _awsMailmanagerRelaySensitive = <String>{};

/// Typed helper for the `authentication` block of
/// `aws_mailmanager_relay` (derived from provider schema).
@immutable
final class MailmanagerRelayAuthentication {
  const MailmanagerRelayAuthentication({this.secretArn, this.noAuthentication});

  final TfArg<String>? secretArn;

  final List<MailmanagerRelayAuthenticationNoAuthentication>? noAuthentication;

  Map<String, Object?> encode() => {
    if (secretArn != null) 'secret_arn': secretArn!.toTfJson(),
    if (noAuthentication != null)
      'no_authentication': [for (final e in noAuthentication!) e.encode()],
  };
}

/// Typed helper for the `authentication.no_authentication` block of
/// `aws_mailmanager_relay` (derived from provider schema).
@immutable
final class MailmanagerRelayAuthenticationNoAuthentication {
  const MailmanagerRelayAuthenticationNoAuthentication();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_mailmanager_relay`.
final class AwsMailmanagerRelay extends Resource {
  static const String tfType = 'aws_mailmanager_relay';

  AwsMailmanagerRelay({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> serverName,
    required TfArg<num> serverPort,
    TfArg<Map<String, String>>? tags,
    List<MailmanagerRelayAuthentication>? authentication,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'server_name': serverName,
           'server_port': serverPort,
           if (tags != null) 'tags': tags,
           if (authentication != null)
             'authentication': TfArg.literal([
               for (final e in authentication) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMailmanagerRelaySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `last_modified_timestamp` attribute.
  TfRef<String> get lastModifiedTimestamp =>
      TfRef.attribute<String>(this, 'last_modified_timestamp');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}

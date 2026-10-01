// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mailmanager_relay`.
const Set<String> _awsMailmanagerRelaySensitive = <String>{};

/// Exactly one of `no_authentication`, `secret_arn` on the `authentication` block of `aws_mailmanager_relay`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.noAuthentication(...)`.
sealed class MailmanagerRelayAuthentication {
  const MailmanagerRelayAuthentication();

  /// Sets `no_authentication`.
  const factory MailmanagerRelayAuthentication.noAuthentication(
    List<MailmanagerRelayNoAuthentication> noAuthentication,
  ) = MailmanagerRelayNoAuthenticationChoice;

  /// Sets `secret_arn`.
  const factory MailmanagerRelayAuthentication.secretArn(
    TfArg<String> secretArn,
  ) = MailmanagerRelayAuthenticationSecretArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MailmanagerRelayAuthentication.noAuthentication] choice: sets `no_authentication`.
final class MailmanagerRelayNoAuthenticationChoice
    extends MailmanagerRelayAuthentication {
  const MailmanagerRelayNoAuthenticationChoice(this.noAuthentication);

  final List<MailmanagerRelayNoAuthentication> noAuthentication;

  @override
  String get blockKey => 'no_authentication';

  @override
  Map<String, Object?> encode() => {
    'no_authentication': [for (final e in noAuthentication) e.encode()],
  };
}

/// The [MailmanagerRelayAuthentication.secretArn] choice: sets `secret_arn`.
final class MailmanagerRelayAuthenticationSecretArn
    extends MailmanagerRelayAuthentication {
  const MailmanagerRelayAuthenticationSecretArn(this.secretArn);

  final TfArg<String> secretArn;

  @override
  String get blockKey => 'secret_arn';

  @override
  Map<String, Object?> encode() => {'secret_arn': secretArn.toTfJson()};
}

/// Typed helper for the `authentication.no_authentication` block of
/// `aws_mailmanager_relay` (derived from provider schema).
@immutable
final class MailmanagerRelayNoAuthentication {
  const MailmanagerRelayNoAuthentication();

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
           'region': ?region,
           'server_name': serverName,
           'server_port': serverPort,
           'tags': ?tags,
           if (authentication != null)
             'authentication': TfArg.literal([
               for (final e in authentication) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMailmanagerRelaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMailmanagerRelay>`.
  RefTo<AwsMailmanagerRelay> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `server_name` attribute.
  TfRef<String> get serverName => TfRef.attribute<String>(this, 'server_name');

  /// Reference to `server_port` attribute.
  TfRef<num> get serverPort => TfRef.attribute<num>(this, 'server_port');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

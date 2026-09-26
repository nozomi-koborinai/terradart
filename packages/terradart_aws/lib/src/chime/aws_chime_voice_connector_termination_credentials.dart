// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chime_voice_connector_termination_credentials`.
const Set<String> _awsChimeVoiceConnectorTerminationCredentialsSensitive =
    <String>{'credentials.password'};

/// Typed helper for the `credentials` block of
/// `aws_chime_voice_connector_termination_credentials` (derived from provider schema).
@immutable
final class ChimeVoiceConnectorTerminationCredentialsCredentials {
  const ChimeVoiceConnectorTerminationCredentialsCredentials({
    required this.password,
    required this.username,
  });

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Factory wrapper for `aws_chime_voice_connector_termination_credentials`.
final class AwsChimeVoiceConnectorTerminationCredentials extends Resource {
  static const String tfType =
      'aws_chime_voice_connector_termination_credentials';

  AwsChimeVoiceConnectorTerminationCredentials({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> voiceConnectorId,
    required List<ChimeVoiceConnectorTerminationCredentialsCredentials>
    credentials,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'voice_connector_id': voiceConnectorId,
           'credentials': TfArg.literal([
             for (final e in credentials) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChimeVoiceConnectorTerminationCredentialsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

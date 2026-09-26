// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chime_voice_connector_group`.
const Set<String> _awsChimeVoiceConnectorGroupSensitive = <String>{};

/// Typed helper for the `connector` block of
/// `aws_chime_voice_connector_group` (derived from provider schema).
@immutable
final class ChimeVoiceConnectorGroupConnector {
  const ChimeVoiceConnectorGroupConnector({
    required this.priority,
    required this.voiceConnectorId,
  });

  final TfArg<num> priority;

  final TfArg<String> voiceConnectorId;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'voice_connector_id': voiceConnectorId.toTfJson(),
  };
}

/// Factory wrapper for `aws_chime_voice_connector_group`.
final class AwsChimeVoiceConnectorGroup extends Resource {
  static const String tfType = 'aws_chime_voice_connector_group';

  AwsChimeVoiceConnectorGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    List<ChimeVoiceConnectorGroupConnector>? connector,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (connector != null)
             'connector': TfArg.literal([
               for (final e in connector) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsChimeVoiceConnectorGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

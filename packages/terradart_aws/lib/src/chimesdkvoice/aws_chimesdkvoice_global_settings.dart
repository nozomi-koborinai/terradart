// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chimesdkvoice_global_settings`.
const Set<String> _awsChimesdkvoiceGlobalSettingsSensitive = <String>{};

/// Typed helper for the `voice_connector` block of
/// `aws_chimesdkvoice_global_settings` (derived from provider schema).
@immutable
final class ChimesdkvoiceGlobalSettingsVoiceConnector {
  const ChimesdkvoiceGlobalSettingsVoiceConnector({this.cdrBucket});

  final TfArg<String>? cdrBucket;

  Map<String, Object?> encode() => {
    if (cdrBucket != null) 'cdr_bucket': cdrBucket!.toTfJson(),
  };
}

/// Factory wrapper for `aws_chimesdkvoice_global_settings`.
final class AwsChimesdkvoiceGlobalSettings extends Resource {
  static const String tfType = 'aws_chimesdkvoice_global_settings';

  AwsChimesdkvoiceGlobalSettings({
    required super.localName,
    required ChimesdkvoiceGlobalSettingsVoiceConnector voiceConnector,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'voice_connector': TfArg.literal(voiceConnector.encode())},
       );

  @override
  Set<String> get sensitiveFields => _awsChimesdkvoiceGlobalSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

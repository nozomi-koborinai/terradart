// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_polly_voices`.
const Set<String> _awsPollyVoicesSensitive = <String>{};

/// Typed helper for the `voices` block of
/// `aws_polly_voices` (derived from provider schema).
@immutable
final class DataPollyVoicesVoices {
  const DataPollyVoicesVoices();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_polly_voices`.
final class DataAwsPollyVoices extends Data {
  static const String tfType = 'aws_polly_voices';

  DataAwsPollyVoices({
    required super.localName,
    TfArg<String>? engine,
    TfArg<bool>? includeAdditionalLanguageCodes,
    TfArg<String>? languageCode,
    TfArg<String>? region,
    List<DataPollyVoicesVoices>? voices,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (engine != null) 'engine': engine,
           if (includeAdditionalLanguageCodes != null)
             'include_additional_language_codes':
                 includeAdditionalLanguageCodes,
           if (languageCode != null) 'language_code': languageCode,
           if (region != null) 'region': region,
           if (voices != null)
             'voices': TfArg.literal([for (final e in voices) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPollyVoicesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_custom_data_identifier`.
const Set<String> _awsMacie2CustomDataIdentifierSensitive = <String>{};

/// Factory wrapper for `aws_macie2_custom_data_identifier`.
final class AwsMacie2CustomDataIdentifier extends Resource {
  static const String tfType = 'aws_macie2_custom_data_identifier';

  AwsMacie2CustomDataIdentifier({
    required super.localName,
    TfArg<String>? description,
    TfArg<List<String>>? ignoreWords,
    TfArg<List<String>>? keywords,
    TfArg<num>? maximumMatchDistance,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? regex,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (ignoreWords != null) 'ignore_words': ignoreWords,
           if (keywords != null) 'keywords': keywords,
           if (maximumMatchDistance != null)
             'maximum_match_distance': maximumMatchDistance,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (regex != null) 'regex': regex,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMacie2CustomDataIdentifierSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_glossary_term`.
const Set<String> _awsDatazoneGlossaryTermSensitive = <String>{};

/// Typed helper for the `term_relations` block of
/// `aws_datazone_glossary_term` (derived from provider schema).
@immutable
final class DatazoneGlossaryTermTermRelations {
  const DatazoneGlossaryTermTermRelations({this.classifies, this.isA});

  final TfArg<List<Object?>>? classifies;

  final TfArg<List<Object?>>? isA;

  Map<String, Object?> encode() => {
    if (classifies != null) 'classifies': classifies!.toTfJson(),
    if (isA != null) 'is_a': isA!.toTfJson(),
  };
}

/// Factory wrapper for `aws_datazone_glossary_term`.
final class AwsDatazoneGlossaryTerm extends Resource {
  static const String tfType = 'aws_datazone_glossary_term';

  AwsDatazoneGlossaryTerm({
    required super.localName,
    TfArg<String>? domainIdentifier,
    required TfArg<String> glossaryIdentifier,
    TfArg<String>? longDescription,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? shortDescription,
    TfArg<String>? status,
    List<DatazoneGlossaryTermTermRelations>? termRelations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (domainIdentifier != null) 'domain_identifier': domainIdentifier,
           'glossary_identifier': glossaryIdentifier,
           if (longDescription != null) 'long_description': longDescription,
           'name': name,
           if (region != null) 'region': region,
           if (shortDescription != null) 'short_description': shortDescription,
           if (status != null) 'status': status,
           if (termRelations != null)
             'term_relations': TfArg.literal([
               for (final e in termRelations) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneGlossaryTermSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');
}

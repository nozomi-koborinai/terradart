// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_glossary_term`.
const Set<String> _awsDatazoneGlossaryTermSensitive = <String>{};

/// Datazone Glossary Term enum for `status`.
enum DatazoneGlossaryTermStatus implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const DatazoneGlossaryTermStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `term_relations` block of
/// `aws_datazone_glossary_term` (derived from provider schema).
@immutable
final class DatazoneGlossaryTermTermRelations {
  const DatazoneGlossaryTermTermRelations({this.classifies, this.isA});

  final TfArg<List<String>>? classifies;

  final TfArg<List<String>>? isA;

  Map<String, Object?> encode() => {
    'classifies': ?classifies?.toTfJson(),
    'is_a': ?isA?.toTfJson(),
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
    TfArg<DatazoneGlossaryTermStatus>? status,
    List<DatazoneGlossaryTermTermRelations>? termRelations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_identifier': ?domainIdentifier,
           'glossary_identifier': glossaryIdentifier,
           'long_description': ?longDescription,
           'name': name,
           'region': ?region,
           'short_description': ?shortDescription,
           'status': ?status,
           if (termRelations != null)
             'term_relations': TfArg.literal([
               for (final e in termRelations) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneGlossaryTermSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatazoneGlossaryTerm>`.
  RefTo<AwsDatazoneGlossaryTerm> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `domain_identifier` attribute.
  TfRef<String> get domainIdentifierRef =>
      TfRef.attribute<String>(this, 'domain_identifier');

  /// Reference to `glossary_identifier` attribute.
  TfRef<String> get glossaryIdentifierRef =>
      TfRef.attribute<String>(this, 'glossary_identifier');

  /// Reference to `long_description` attribute.
  TfRef<String> get longDescriptionRef =>
      TfRef.attribute<String>(this, 'long_description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `short_description` attribute.
  TfRef<String> get shortDescriptionRef =>
      TfRef.attribute<String>(this, 'short_description');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');
}

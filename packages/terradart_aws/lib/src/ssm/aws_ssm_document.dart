// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_document`.
const Set<String> _awsSsmDocumentSensitive = <String>{};

/// Typed helper for the `attachments_source` block of
/// `aws_ssm_document` (derived from provider schema).
@immutable
final class SsmDocumentAttachmentsSource {
  const SsmDocumentAttachmentsSource({
    required this.key,
    this.name,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<String>? name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssm_document`.
final class AwsSsmDocument extends Resource {
  static const String tfType = 'aws_ssm_document';

  AwsSsmDocument({
    required super.localName,
    required TfArg<String> content,
    TfArg<String>? documentFormat,
    required TfArg<String> documentType,
    required TfArg<String> name,
    TfArg<Map<String, String>>? permissions,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? targetType,
    TfArg<String>? versionName,
    List<SsmDocumentAttachmentsSource>? attachmentsSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content': content,
           if (documentFormat != null) 'document_format': documentFormat,
           'document_type': documentType,
           'name': name,
           if (permissions != null) 'permissions': permissions,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (targetType != null) 'target_type': targetType,
           if (versionName != null) 'version_name': versionName,
           if (attachmentsSource != null)
             'attachments_source': TfArg.literal([
               for (final e in attachmentsSource) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmDocumentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `default_version` attribute.
  TfRef<String> get defaultVersion =>
      TfRef.attribute<String>(this, 'default_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `document_version` attribute.
  TfRef<String> get documentVersion =>
      TfRef.attribute<String>(this, 'document_version');

  /// Reference to `hash` attribute.
  TfRef<String> get hash => TfRef.attribute<String>(this, 'hash');

  /// Reference to `hash_type` attribute.
  TfRef<String> get hashType => TfRef.attribute<String>(this, 'hash_type');

  /// Reference to `latest_version` attribute.
  TfRef<String> get latestVersion =>
      TfRef.attribute<String>(this, 'latest_version');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `parameter` attribute.
  TfRef<List<Map<String, Object?>>> get parameter =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'parameter');

  /// Reference to `platform_types` attribute.
  TfRef<List<String>> get platformTypes =>
      TfRef.attribute<List<String>>(this, 'platform_types');

  /// Reference to `schema_version` attribute.
  TfRef<String> get schemaVersion =>
      TfRef.attribute<String>(this, 'schema_version');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}

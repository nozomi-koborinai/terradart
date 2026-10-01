// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_document`.
const Set<String> _awsSsmDocumentSensitive = <String>{};

/// Ssm Document enum for `document_format`.
enum SsmDocumentFormat implements TerraformEnum {
  yaml('YAML'),
  json('JSON'),
  text('TEXT');

  const SsmDocumentFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ssm Document enum for `document_type`.
enum SsmDocumentType implements TerraformEnum {
  command('Command'),
  policy('Policy'),
  automation('Automation'),
  session('Session'),
  package('Package'),
  applicationconfiguration('ApplicationConfiguration'),
  applicationconfigurationschema('ApplicationConfigurationSchema'),
  deploymentstrategy('DeploymentStrategy'),
  changecalendar('ChangeCalendar'),
  automationChangetemplate('Automation.ChangeTemplate'),
  problemanalysis('ProblemAnalysis'),
  problemanalysistemplate('ProblemAnalysisTemplate'),
  cloudformation('CloudFormation'),
  conformancepacktemplate('ConformancePackTemplate'),
  quicksetup('QuickSetup'),
  manualapprovalpolicy('ManualApprovalPolicy'),
  autoapprovalpolicy('AutoApprovalPolicy');

  const SsmDocumentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attachments_source` block of
/// `aws_ssm_document` (derived from provider schema).
@immutable
final class SsmDocumentAttachmentsSource {
  const SsmDocumentAttachmentsSource({
    required this.key,
    this.name,
    required this.values,
  });

  final TfArg<SsmDocumentKey> key;

  final TfArg<String>? name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'name': ?name?.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
enum SsmDocumentKey implements TerraformEnum {
  sourceurl('SourceUrl'),
  s3fileurl('S3FileUrl'),
  attachmentreference('AttachmentReference');

  const SsmDocumentKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ssm_document`.
final class AwsSsmDocument extends Resource {
  static const String tfType = 'aws_ssm_document';

  AwsSsmDocument(
    super.localName, {
    required TfArg<String> content,
    TfArg<SsmDocumentFormat>? documentFormat,
    required TfArg<SsmDocumentType> documentType,
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
           'document_format': ?documentFormat,
           'document_type': documentType,
           'name': name,
           'permissions': ?permissions,
           'region': ?region,
           'tags': ?tags,
           'target_type': ?targetType,
           'version_name': ?versionName,
           if (attachmentsSource != null)
             'attachments_source': TfArg.literal([
               for (final e in attachmentsSource) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmDocumentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmDocument>`.
  RefTo<AwsSsmDocument> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `document_format` attribute.
  TfRef<String> get documentFormat =>
      TfRef.attribute<String>(this, 'document_format');

  /// Reference to `document_type` attribute.
  TfRef<String> get documentType =>
      TfRef.attribute<String>(this, 'document_type');

  /// Reference to `permissions` attribute.
  TfRef<Map<String, String>> get permissions =>
      TfRef.attribute<Map<String, String>>(this, 'permissions');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetType => TfRef.attribute<String>(this, 'target_type');

  /// Reference to `version_name` attribute.
  TfRef<String> get versionName =>
      TfRef.attribute<String>(this, 'version_name');
}

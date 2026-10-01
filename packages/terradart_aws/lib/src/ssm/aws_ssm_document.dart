// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_document`.
const Set<String> _awsSsmDocumentSensitive = <String>{};

/// Ssm Document enum for `document_format`.
extension type const SsmDocumentFormat._(TfArg<String> _)
    implements TfArg<String> {
  SsmDocumentFormat.variable(String name) : this._(TfArg.variable(name));
  SsmDocumentFormat.expression(String template)
    : this._(TfArg.expression(template));
  const SsmDocumentFormat.arg(TfArg<String> arg) : this._(arg);

  static const yaml = SsmDocumentFormat._(TfArgLiteral('YAML'));
  static const json = SsmDocumentFormat._(TfArgLiteral('JSON'));
  static const text = SsmDocumentFormat._(TfArgLiteral('TEXT'));

  static const List<SsmDocumentFormat> values = [yaml, json, text];
}

/// Ssm Document enum for `document_type`.
extension type const SsmDocumentType._(TfArg<String> _)
    implements TfArg<String> {
  SsmDocumentType.variable(String name) : this._(TfArg.variable(name));
  SsmDocumentType.expression(String template)
    : this._(TfArg.expression(template));
  const SsmDocumentType.arg(TfArg<String> arg) : this._(arg);

  static const command = SsmDocumentType._(TfArgLiteral('Command'));
  static const policy = SsmDocumentType._(TfArgLiteral('Policy'));
  static const automation = SsmDocumentType._(TfArgLiteral('Automation'));
  static const session = SsmDocumentType._(TfArgLiteral('Session'));
  static const package = SsmDocumentType._(TfArgLiteral('Package'));
  static const applicationconfiguration = SsmDocumentType._(
    TfArgLiteral('ApplicationConfiguration'),
  );
  static const applicationconfigurationschema = SsmDocumentType._(
    TfArgLiteral('ApplicationConfigurationSchema'),
  );
  static const deploymentstrategy = SsmDocumentType._(
    TfArgLiteral('DeploymentStrategy'),
  );
  static const changecalendar = SsmDocumentType._(
    TfArgLiteral('ChangeCalendar'),
  );
  static const automationChangetemplate = SsmDocumentType._(
    TfArgLiteral('Automation.ChangeTemplate'),
  );
  static const problemanalysis = SsmDocumentType._(
    TfArgLiteral('ProblemAnalysis'),
  );
  static const problemanalysistemplate = SsmDocumentType._(
    TfArgLiteral('ProblemAnalysisTemplate'),
  );
  static const cloudformation = SsmDocumentType._(
    TfArgLiteral('CloudFormation'),
  );
  static const conformancepacktemplate = SsmDocumentType._(
    TfArgLiteral('ConformancePackTemplate'),
  );
  static const quicksetup = SsmDocumentType._(TfArgLiteral('QuickSetup'));
  static const manualapprovalpolicy = SsmDocumentType._(
    TfArgLiteral('ManualApprovalPolicy'),
  );
  static const autoapprovalpolicy = SsmDocumentType._(
    TfArgLiteral('AutoApprovalPolicy'),
  );

  static const List<SsmDocumentType> values = [
    command,
    policy,
    automation,
    session,
    package,
    applicationconfiguration,
    applicationconfigurationschema,
    deploymentstrategy,
    changecalendar,
    automationChangetemplate,
    problemanalysis,
    problemanalysistemplate,
    cloudformation,
    conformancepacktemplate,
    quicksetup,
    manualapprovalpolicy,
    autoapprovalpolicy,
  ];
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

  final SsmDocumentKey key;

  final TfArg<String>? name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'name': ?name?.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
extension type const SsmDocumentKey._(TfArg<String> _)
    implements TfArg<String> {
  SsmDocumentKey.variable(String name) : this._(TfArg.variable(name));
  SsmDocumentKey.expression(String template)
    : this._(TfArg.expression(template));
  const SsmDocumentKey.arg(TfArg<String> arg) : this._(arg);

  static const sourceurl = SsmDocumentKey._(TfArgLiteral('SourceUrl'));
  static const s3fileurl = SsmDocumentKey._(TfArgLiteral('S3FileUrl'));
  static const attachmentreference = SsmDocumentKey._(
    TfArgLiteral('AttachmentReference'),
  );

  static const List<SsmDocumentKey> values = [
    sourceurl,
    s3fileurl,
    attachmentreference,
  ];
}

/// Factory wrapper for `aws_ssm_document`.
final class AwsSsmDocument extends Resource {
  static const String tfType = 'aws_ssm_document';

  AwsSsmDocument(
    super.localName, {
    required TfArg<String> content,
    SsmDocumentFormat? documentFormat,
    required SsmDocumentType documentType,
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

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_comprehend_entity_recognizer`.
const Set<String> _awsComprehendEntityRecognizerSensitive = <String>{};

/// Comprehend Entity Recognizer Language enum for `language_code`.
extension type const ComprehendEntityRecognizerLanguageCode._(TfArg<String> _)
    implements TfArg<String> {
  ComprehendEntityRecognizerLanguageCode.variable(String name)
    : this._(TfArg.variable(name));
  ComprehendEntityRecognizerLanguageCode.expression(String template)
    : this._(TfArg.expression(template));
  const ComprehendEntityRecognizerLanguageCode.arg(TfArg<String> arg)
    : this._(arg);

  static const en = ComprehendEntityRecognizerLanguageCode._(
    TfArgLiteral('en'),
  );
  static const es = ComprehendEntityRecognizerLanguageCode._(
    TfArgLiteral('es'),
  );
  static const fr = ComprehendEntityRecognizerLanguageCode._(
    TfArgLiteral('fr'),
  );
  static const de = ComprehendEntityRecognizerLanguageCode._(
    TfArgLiteral('de'),
  );
  static const it = ComprehendEntityRecognizerLanguageCode._(
    TfArgLiteral('it'),
  );
  static const pt = ComprehendEntityRecognizerLanguageCode._(
    TfArgLiteral('pt'),
  );

  static const List<ComprehendEntityRecognizerLanguageCode> values = [
    en,
    es,
    fr,
    de,
    it,
    pt,
  ];
}

/// At most one of `version_name`, `version_name_prefix` on `aws_comprehend_entity_recognizer`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.versionName(...)`.
sealed class ComprehendEntityRecognizerVersionName {
  const ComprehendEntityRecognizerVersionName();

  /// Sets `version_name`.
  const factory ComprehendEntityRecognizerVersionName.versionName(
    TfArg<String> versionName,
  ) = ComprehendEntityRecognizerVersionNameChoice;

  /// Sets `version_name_prefix`.
  const factory ComprehendEntityRecognizerVersionName.versionNamePrefix(
    TfArg<String> versionNamePrefix,
  ) = ComprehendEntityRecognizerVersionNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComprehendEntityRecognizerVersionName.versionName] choice: sets `version_name`.
final class ComprehendEntityRecognizerVersionNameChoice
    extends ComprehendEntityRecognizerVersionName {
  const ComprehendEntityRecognizerVersionNameChoice(this.versionName);

  final TfArg<String> versionName;

  @override
  String get blockKey => 'version_name';

  @override
  Map<String, Object?> encode() => {'version_name': versionName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'version_name': versionName};
}

/// The [ComprehendEntityRecognizerVersionName.versionNamePrefix] choice: sets `version_name_prefix`.
final class ComprehendEntityRecognizerVersionNamePrefix
    extends ComprehendEntityRecognizerVersionName {
  const ComprehendEntityRecognizerVersionNamePrefix(this.versionNamePrefix);

  final TfArg<String> versionNamePrefix;

  @override
  String get blockKey => 'version_name_prefix';

  @override
  Map<String, Object?> encode() => {
    'version_name_prefix': versionNamePrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'version_name_prefix': versionNamePrefix,
  };
}

/// Typed helper for the `input_data_config` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerInputDataConfig {
  const ComprehendEntityRecognizerInputDataConfig({
    this.dataFormat,
    required this.labels,
    required this.source,
    required this.entityTypes,
  });

  final ComprehendEntityRecognizerDataFormat? dataFormat;

  final ComprehendEntityRecognizerLabels labels;

  final ComprehendEntityRecognizerSource source;

  final List<ComprehendEntityRecognizerEntityTypes> entityTypes;

  Map<String, Object?> encode() => {
    'data_format': ?dataFormat?.toTfJson(),
    ...labels.encode(),
    ...source.encode(),
    'entity_types': [for (final e in entityTypes) e.encode()],
  };
}

/// Exactly one of `annotations`, `entity_list` on the `input_data_config` block of `aws_comprehend_entity_recognizer`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.annotations(...)`.
sealed class ComprehendEntityRecognizerLabels {
  const ComprehendEntityRecognizerLabels();

  /// Sets `annotations`.
  const factory ComprehendEntityRecognizerLabels.annotations(
    ComprehendEntityRecognizerAnnotations annotations,
  ) = ComprehendEntityRecognizerLabelsAnnotations;

  /// Sets `entity_list`.
  const factory ComprehendEntityRecognizerLabels.entityList(
    ComprehendEntityRecognizerEntityList entityList,
  ) = ComprehendEntityRecognizerLabelsEntityList;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ComprehendEntityRecognizerLabels.annotations] choice: sets `annotations`.
final class ComprehendEntityRecognizerLabelsAnnotations
    extends ComprehendEntityRecognizerLabels {
  const ComprehendEntityRecognizerLabelsAnnotations(this.annotations);

  final ComprehendEntityRecognizerAnnotations annotations;

  @override
  String get blockKey => 'annotations';

  @override
  Map<String, Object?> encode() => {'annotations': annotations.encode()};
}

/// The [ComprehendEntityRecognizerLabels.entityList] choice: sets `entity_list`.
final class ComprehendEntityRecognizerLabelsEntityList
    extends ComprehendEntityRecognizerLabels {
  const ComprehendEntityRecognizerLabelsEntityList(this.entityList);

  final ComprehendEntityRecognizerEntityList entityList;

  @override
  String get blockKey => 'entity_list';

  @override
  Map<String, Object?> encode() => {'entity_list': entityList.encode()};
}

/// Exactly one of `augmented_manifests`, `documents` on the `input_data_config` block of `aws_comprehend_entity_recognizer`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.augmentedManifests(...)`.
sealed class ComprehendEntityRecognizerSource {
  const ComprehendEntityRecognizerSource();

  /// Sets `augmented_manifests`.
  const factory ComprehendEntityRecognizerSource.augmentedManifests(
    List<ComprehendEntityRecognizerAugmentedManifests> augmentedManifests,
  ) = ComprehendEntityRecognizerSourceAugmentedManifests;

  /// Sets `documents`.
  const factory ComprehendEntityRecognizerSource.documents(
    ComprehendEntityRecognizerDocuments documents,
  ) = ComprehendEntityRecognizerSourceDocuments;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ComprehendEntityRecognizerSource.augmentedManifests] choice: sets `augmented_manifests`.
final class ComprehendEntityRecognizerSourceAugmentedManifests
    extends ComprehendEntityRecognizerSource {
  const ComprehendEntityRecognizerSourceAugmentedManifests(
    this.augmentedManifests,
  );

  final List<ComprehendEntityRecognizerAugmentedManifests> augmentedManifests;

  @override
  String get blockKey => 'augmented_manifests';

  @override
  Map<String, Object?> encode() => {
    'augmented_manifests': [for (final e in augmentedManifests) e.encode()],
  };
}

/// The [ComprehendEntityRecognizerSource.documents] choice: sets `documents`.
final class ComprehendEntityRecognizerSourceDocuments
    extends ComprehendEntityRecognizerSource {
  const ComprehendEntityRecognizerSourceDocuments(this.documents);

  final ComprehendEntityRecognizerDocuments documents;

  @override
  String get blockKey => 'documents';

  @override
  Map<String, Object?> encode() => {'documents': documents.encode()};
}

/// `data_format` — derived from the provider schema description.
extension type const ComprehendEntityRecognizerDataFormat._(TfArg<String> _)
    implements TfArg<String> {
  ComprehendEntityRecognizerDataFormat.variable(String name)
    : this._(TfArg.variable(name));
  ComprehendEntityRecognizerDataFormat.expression(String template)
    : this._(TfArg.expression(template));
  const ComprehendEntityRecognizerDataFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const comprehendCsv = ComprehendEntityRecognizerDataFormat._(
    TfArgLiteral('COMPREHEND_CSV'),
  );
  static const augmentedManifest = ComprehendEntityRecognizerDataFormat._(
    TfArgLiteral('AUGMENTED_MANIFEST'),
  );

  static const List<ComprehendEntityRecognizerDataFormat> values = [
    comprehendCsv,
    augmentedManifest,
  ];
}

/// Typed helper for the `input_data_config.annotations` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerAnnotations {
  const ComprehendEntityRecognizerAnnotations({
    required this.s3Uri,
    this.testS3Uri,
  });

  final TfArg<String> s3Uri;

  final TfArg<String>? testS3Uri;

  Map<String, Object?> encode() => {
    's3_uri': s3Uri.toTfJson(),
    'test_s3_uri': ?testS3Uri?.toTfJson(),
  };
}

/// Typed helper for the `input_data_config.augmented_manifests` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerAugmentedManifests {
  const ComprehendEntityRecognizerAugmentedManifests({
    this.annotationDataS3Uri,
    required this.attributeNames,
    this.documentType,
    required this.s3Uri,
    this.sourceDocumentsS3Uri,
    this.split,
  });

  final TfArg<String>? annotationDataS3Uri;

  final TfArg<List<String>> attributeNames;

  final ComprehendEntityRecognizerDocumentType? documentType;

  final TfArg<String> s3Uri;

  final TfArg<String>? sourceDocumentsS3Uri;

  final ComprehendEntityRecognizerSplit? split;

  Map<String, Object?> encode() => {
    'annotation_data_s3_uri': ?annotationDataS3Uri?.toTfJson(),
    'attribute_names': attributeNames.toTfJson(),
    'document_type': ?documentType?.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    'source_documents_s3_uri': ?sourceDocumentsS3Uri?.toTfJson(),
    'split': ?split?.toTfJson(),
  };
}

/// `document_type` — derived from the provider schema description.
extension type const ComprehendEntityRecognizerDocumentType._(TfArg<String> _)
    implements TfArg<String> {
  ComprehendEntityRecognizerDocumentType.variable(String name)
    : this._(TfArg.variable(name));
  ComprehendEntityRecognizerDocumentType.expression(String template)
    : this._(TfArg.expression(template));
  const ComprehendEntityRecognizerDocumentType.arg(TfArg<String> arg)
    : this._(arg);

  static const plainTextDocument = ComprehendEntityRecognizerDocumentType._(
    TfArgLiteral('PLAIN_TEXT_DOCUMENT'),
  );
  static const semiStructuredDocument =
      ComprehendEntityRecognizerDocumentType._(
        TfArgLiteral('SEMI_STRUCTURED_DOCUMENT'),
      );

  static const List<ComprehendEntityRecognizerDocumentType> values = [
    plainTextDocument,
    semiStructuredDocument,
  ];
}

/// `split` — derived from the provider schema description.
extension type const ComprehendEntityRecognizerSplit._(TfArg<String> _)
    implements TfArg<String> {
  ComprehendEntityRecognizerSplit.variable(String name)
    : this._(TfArg.variable(name));
  ComprehendEntityRecognizerSplit.expression(String template)
    : this._(TfArg.expression(template));
  const ComprehendEntityRecognizerSplit.arg(TfArg<String> arg) : this._(arg);

  static const train = ComprehendEntityRecognizerSplit._(TfArgLiteral('TRAIN'));
  static const test = ComprehendEntityRecognizerSplit._(TfArgLiteral('TEST'));

  static const List<ComprehendEntityRecognizerSplit> values = [train, test];
}

/// Typed helper for the `input_data_config.documents` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerDocuments {
  const ComprehendEntityRecognizerDocuments({
    this.inputFormat,
    required this.s3Uri,
    this.testS3Uri,
  });

  final ComprehendEntityRecognizerInputFormat? inputFormat;

  final TfArg<String> s3Uri;

  final TfArg<String>? testS3Uri;

  Map<String, Object?> encode() => {
    'input_format': ?inputFormat?.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    'test_s3_uri': ?testS3Uri?.toTfJson(),
  };
}

/// `input_format` — derived from the provider schema description.
extension type const ComprehendEntityRecognizerInputFormat._(TfArg<String> _)
    implements TfArg<String> {
  ComprehendEntityRecognizerInputFormat.variable(String name)
    : this._(TfArg.variable(name));
  ComprehendEntityRecognizerInputFormat.expression(String template)
    : this._(TfArg.expression(template));
  const ComprehendEntityRecognizerInputFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const oneDocPerFile = ComprehendEntityRecognizerInputFormat._(
    TfArgLiteral('ONE_DOC_PER_FILE'),
  );
  static const oneDocPerLine = ComprehendEntityRecognizerInputFormat._(
    TfArgLiteral('ONE_DOC_PER_LINE'),
  );

  static const List<ComprehendEntityRecognizerInputFormat> values = [
    oneDocPerFile,
    oneDocPerLine,
  ];
}

/// Typed helper for the `input_data_config.entity_list` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerEntityList {
  const ComprehendEntityRecognizerEntityList({required this.s3Uri});

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// Typed helper for the `input_data_config.entity_types` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerEntityTypes {
  const ComprehendEntityRecognizerEntityTypes({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `vpc_config` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerVpcConfig {
  const ComprehendEntityRecognizerVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_comprehend_entity_recognizer`.
final class AwsComprehendEntityRecognizer extends Resource {
  static const String tfType = 'aws_comprehend_entity_recognizer';

  AwsComprehendEntityRecognizer(
    super.localName, {
    required TfArg<String> dataAccessRoleArn,
    required ComprehendEntityRecognizerLanguageCode languageCode,
    TfArg<String>? modelKmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    ComprehendEntityRecognizerVersionName? versionName,
    TfArg<String>? volumeKmsKeyId,
    required ComprehendEntityRecognizerInputDataConfig inputDataConfig,
    ComprehendEntityRecognizerVpcConfig? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_access_role_arn': dataAccessRoleArn,
           'language_code': languageCode,
           'model_kms_key_id': ?modelKmsKeyId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           ...?versionName?.argMap,
           'volume_kms_key_id': ?volumeKmsKeyId,
           'input_data_config': TfArg.literal(inputDataConfig.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsComprehendEntityRecognizerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsComprehendEntityRecognizer>`.
  RefTo<AwsComprehendEntityRecognizer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `data_access_role_arn` attribute.
  TfRef<String> get dataAccessRoleArn =>
      TfRef.attribute<String>(this, 'data_access_role_arn');

  /// Reference to `language_code` attribute.
  TfRef<String> get languageCode =>
      TfRef.attribute<String>(this, 'language_code');

  /// Reference to `model_kms_key_id` attribute.
  TfRef<String> get modelKmsKeyId =>
      TfRef.attribute<String>(this, 'model_kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version_name` attribute.
  TfRef<String> get versionName =>
      TfRef.attribute<String>(this, 'version_name');

  /// Reference to `version_name_prefix` attribute.
  TfRef<String> get versionNamePrefix =>
      TfRef.attribute<String>(this, 'version_name_prefix');

  /// Reference to `volume_kms_key_id` attribute.
  TfRef<String> get volumeKmsKeyId =>
      TfRef.attribute<String>(this, 'volume_kms_key_id');
}

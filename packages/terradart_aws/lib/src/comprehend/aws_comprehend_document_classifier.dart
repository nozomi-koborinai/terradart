// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_comprehend_document_classifier`.
const Set<String> _awsComprehendDocumentClassifierSensitive = <String>{};

/// Comprehend Document Classifier Language enum for `language_code`.
enum ComprehendDocumentClassifierLanguageCode implements TerraformEnum {
  en('en'),
  es('es'),
  fr('fr'),
  de('de'),
  it('it'),
  pt('pt');

  const ComprehendDocumentClassifierLanguageCode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Comprehend Document Classifier enum for `mode`.
enum ComprehendDocumentClassifierMode implements TerraformEnum {
  multiClass('MULTI_CLASS'),
  multiLabel('MULTI_LABEL');

  const ComprehendDocumentClassifierMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `version_name`, `version_name_prefix` on `aws_comprehend_document_classifier`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.versionName(...)`.
sealed class ComprehendDocumentClassifierVersionName {
  const ComprehendDocumentClassifierVersionName();

  /// Sets `version_name`.
  const factory ComprehendDocumentClassifierVersionName.versionName(
    TfArg<String> versionName,
  ) = ComprehendDocumentClassifierVersionNameVersionName;

  /// Sets `version_name_prefix`.
  const factory ComprehendDocumentClassifierVersionName.versionNamePrefix(
    TfArg<String> versionNamePrefix,
  ) = ComprehendDocumentClassifierVersionNameVersionNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComprehendDocumentClassifierVersionName.versionName] choice: sets `version_name`.
final class ComprehendDocumentClassifierVersionNameVersionName
    extends ComprehendDocumentClassifierVersionName {
  const ComprehendDocumentClassifierVersionNameVersionName(this.versionName);

  final TfArg<String> versionName;

  @override
  String get blockKey => 'version_name';

  @override
  Map<String, Object?> encode() => {'version_name': versionName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'version_name': versionName};
}

/// The [ComprehendDocumentClassifierVersionName.versionNamePrefix] choice: sets `version_name_prefix`.
final class ComprehendDocumentClassifierVersionNameVersionNamePrefix
    extends ComprehendDocumentClassifierVersionName {
  const ComprehendDocumentClassifierVersionNameVersionNamePrefix(
    this.versionNamePrefix,
  );

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
/// `aws_comprehend_document_classifier` (derived from provider schema).
@immutable
final class ComprehendDocumentClassifierInputDataConfig {
  const ComprehendDocumentClassifierInputDataConfig({
    this.dataFormat,
    this.labelDelimiter,
    required this.source,
    this.testS3Uri,
  });

  final TfArg<ComprehendDocumentClassifierInputDataConfigDataFormat>?
  dataFormat;

  final TfArg<ComprehendDocumentClassifierInputDataConfigLabelDelimiter>?
  labelDelimiter;

  final ComprehendDocumentClassifierInputDataConfigSource source;

  final TfArg<String>? testS3Uri;

  Map<String, Object?> encode() => {
    if (dataFormat != null) 'data_format': dataFormat!.toTfJson(),
    if (labelDelimiter != null) 'label_delimiter': labelDelimiter!.toTfJson(),
    ...source.encode(),
    if (testS3Uri != null) 'test_s3_uri': testS3Uri!.toTfJson(),
  };
}

/// Exactly one of `augmented_manifests`, `s3_uri` on the `input_data_config` block of `aws_comprehend_document_classifier`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.augmentedManifests(...)`.
sealed class ComprehendDocumentClassifierInputDataConfigSource {
  const ComprehendDocumentClassifierInputDataConfigSource();

  /// Sets `augmented_manifests`.
  const factory ComprehendDocumentClassifierInputDataConfigSource.augmentedManifests(
    List<ComprehendDocumentClassifierInputDataConfigAugmentedManifests>
    augmentedManifests,
  ) = ComprehendDocumentClassifierInputDataConfigSourceAugmentedManifests;

  /// Sets `s3_uri`.
  const factory ComprehendDocumentClassifierInputDataConfigSource.s3Uri(
    TfArg<String> s3Uri,
  ) = ComprehendDocumentClassifierInputDataConfigSourceS3Uri;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ComprehendDocumentClassifierInputDataConfigSource.augmentedManifests] choice: sets `augmented_manifests`.
final class ComprehendDocumentClassifierInputDataConfigSourceAugmentedManifests
    extends ComprehendDocumentClassifierInputDataConfigSource {
  const ComprehendDocumentClassifierInputDataConfigSourceAugmentedManifests(
    this.augmentedManifests,
  );

  final List<ComprehendDocumentClassifierInputDataConfigAugmentedManifests>
  augmentedManifests;

  @override
  String get blockKey => 'augmented_manifests';

  @override
  Map<String, Object?> encode() => {
    'augmented_manifests': [for (final e in augmentedManifests) e.encode()],
  };
}

/// The [ComprehendDocumentClassifierInputDataConfigSource.s3Uri] choice: sets `s3_uri`.
final class ComprehendDocumentClassifierInputDataConfigSourceS3Uri
    extends ComprehendDocumentClassifierInputDataConfigSource {
  const ComprehendDocumentClassifierInputDataConfigSourceS3Uri(this.s3Uri);

  final TfArg<String> s3Uri;

  @override
  String get blockKey => 's3_uri';

  @override
  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// `data_format` — derived from the provider schema description.
enum ComprehendDocumentClassifierInputDataConfigDataFormat
    implements TerraformEnum {
  comprehendCsv('COMPREHEND_CSV'),
  augmentedManifest('AUGMENTED_MANIFEST');

  const ComprehendDocumentClassifierInputDataConfigDataFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `label_delimiter` — derived from the provider schema description.
enum ComprehendDocumentClassifierInputDataConfigLabelDelimiter
    implements TerraformEnum {
  value('|'),
  value2('~'),
  value3('!'),
  value4('@'),
  value5('#'),
  value6('\$'),
  value7('%'),
  value8('^'),
  value9('*'),
  value10('-'),
  value11('_'),
  value12('+'),
  eq('='),
  value13('\\'),
  value14(':'),
  value15(';'),
  gt('>'),
  value16('?'),
  value17('/'),
  value18(' '),
  value19('	');

  const ComprehendDocumentClassifierInputDataConfigLabelDelimiter(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `input_data_config.augmented_manifests` block of
/// `aws_comprehend_document_classifier` (derived from provider schema).
@immutable
final class ComprehendDocumentClassifierInputDataConfigAugmentedManifests {
  const ComprehendDocumentClassifierInputDataConfigAugmentedManifests({
    this.annotationDataS3Uri,
    required this.attributeNames,
    this.documentType,
    required this.s3Uri,
    this.sourceDocumentsS3Uri,
    this.split,
  });

  final TfArg<String>? annotationDataS3Uri;

  final TfArg<List<Object?>> attributeNames;

  final TfArg<
    ComprehendDocumentClassifierInputDataConfigAugmentedManifestsDocumentType
  >?
  documentType;

  final TfArg<String> s3Uri;

  final TfArg<String>? sourceDocumentsS3Uri;

  final TfArg<
    ComprehendDocumentClassifierInputDataConfigAugmentedManifestsSplit
  >?
  split;

  Map<String, Object?> encode() => {
    if (annotationDataS3Uri != null)
      'annotation_data_s3_uri': annotationDataS3Uri!.toTfJson(),
    'attribute_names': attributeNames.toTfJson(),
    if (documentType != null) 'document_type': documentType!.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (sourceDocumentsS3Uri != null)
      'source_documents_s3_uri': sourceDocumentsS3Uri!.toTfJson(),
    if (split != null) 'split': split!.toTfJson(),
  };
}

/// `document_type` — derived from the provider schema description.
enum ComprehendDocumentClassifierInputDataConfigAugmentedManifestsDocumentType
    implements TerraformEnum {
  plainTextDocument('PLAIN_TEXT_DOCUMENT'),
  semiStructuredDocument('SEMI_STRUCTURED_DOCUMENT');

  const ComprehendDocumentClassifierInputDataConfigAugmentedManifestsDocumentType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `split` — derived from the provider schema description.
enum ComprehendDocumentClassifierInputDataConfigAugmentedManifestsSplit
    implements TerraformEnum {
  train('TRAIN'),
  test('TEST');

  const ComprehendDocumentClassifierInputDataConfigAugmentedManifestsSplit(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `output_data_config` block of
/// `aws_comprehend_document_classifier` (derived from provider schema).
@immutable
final class ComprehendDocumentClassifierOutputDataConfig {
  const ComprehendDocumentClassifierOutputDataConfig({
    this.kmsKeyId,
    required this.s3Uri,
  });

  final TfArg<String>? kmsKeyId;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `vpc_config` block of
/// `aws_comprehend_document_classifier` (derived from provider schema).
@immutable
final class ComprehendDocumentClassifierVpcConfig {
  const ComprehendDocumentClassifierVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnets': subnets.toTfJson(),
  };
}

/// Factory wrapper for `aws_comprehend_document_classifier`.
final class AwsComprehendDocumentClassifier extends Resource {
  static const String tfType = 'aws_comprehend_document_classifier';

  AwsComprehendDocumentClassifier({
    required super.localName,
    required TfArg<String> dataAccessRoleArn,
    required TfArg<ComprehendDocumentClassifierLanguageCode> languageCode,
    TfArg<ComprehendDocumentClassifierMode>? mode,
    TfArg<String>? modelKmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    ComprehendDocumentClassifierVersionName? versionName,
    TfArg<String>? volumeKmsKeyId,
    required ComprehendDocumentClassifierInputDataConfig inputDataConfig,
    ComprehendDocumentClassifierOutputDataConfig? outputDataConfig,
    ComprehendDocumentClassifierVpcConfig? vpcConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_access_role_arn': dataAccessRoleArn,
           'language_code': languageCode,
           if (mode != null) 'mode': mode,
           if (modelKmsKeyId != null) 'model_kms_key_id': modelKmsKeyId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           ...?versionName?.argMap,
           if (volumeKmsKeyId != null) 'volume_kms_key_id': volumeKmsKeyId,
           'input_data_config': TfArg.literal(inputDataConfig.encode()),
           if (outputDataConfig != null)
             'output_data_config': TfArg.literal(outputDataConfig.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsComprehendDocumentClassifierSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

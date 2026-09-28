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

/// Typed helper for the `input_data_config` block of
/// `aws_comprehend_document_classifier` (derived from provider schema).
@immutable
final class ComprehendDocumentClassifierInputDataConfig {
  const ComprehendDocumentClassifierInputDataConfig({
    this.dataFormat,
    this.labelDelimiter,
    required this.augmentedManifestsOrS3Uri,
    this.testS3Uri,
  });

  final TfArg<ComprehendDocumentClassifierInputDataConfigDataFormat>?
  dataFormat;

  final TfArg<ComprehendDocumentClassifierInputDataConfigLabelDelimiter>?
  labelDelimiter;

  final ComprehendDocumentClassifierInputDataConfigAugmentedManifestsOrS3Uri
  augmentedManifestsOrS3Uri;

  final TfArg<String>? testS3Uri;

  Map<String, Object?> encode() => {
    if (dataFormat != null) 'data_format': dataFormat!.toTfJson(),
    if (labelDelimiter != null) 'label_delimiter': labelDelimiter!.toTfJson(),
    ...augmentedManifestsOrS3Uri.encode(),
    if (testS3Uri != null) 'test_s3_uri': testS3Uri!.toTfJson(),
  };
}

/// Exactly one of `augmented_manifests`, `s3_uri` on the `input_data_config` block of `aws_comprehend_document_classifier`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class ComprehendDocumentClassifierInputDataConfigAugmentedManifestsOrS3Uri {
  const ComprehendDocumentClassifierInputDataConfigAugmentedManifestsOrS3Uri();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `augmented_manifests` (one of the [ComprehendDocumentClassifierInputDataConfigAugmentedManifestsOrS3Uri] choices).
final class ComprehendDocumentClassifierInputDataConfigAugmentedManifestsOption
    extends
        ComprehendDocumentClassifierInputDataConfigAugmentedManifestsOrS3Uri {
  const ComprehendDocumentClassifierInputDataConfigAugmentedManifestsOption({
    required this.augmentedManifests,
  });

  final List<ComprehendDocumentClassifierInputDataConfigAugmentedManifests>
  augmentedManifests;

  @override
  String get blockKey => 'augmented_manifests';

  @override
  Map<String, Object?> encode() => {
    'augmented_manifests': [for (final e in augmentedManifests) e.encode()],
  };
}

/// Sets `s3_uri` (one of the [ComprehendDocumentClassifierInputDataConfigAugmentedManifestsOrS3Uri] choices).
final class ComprehendDocumentClassifierInputDataConfigS3UriOption
    extends
        ComprehendDocumentClassifierInputDataConfigAugmentedManifestsOrS3Uri {
  const ComprehendDocumentClassifierInputDataConfigS3UriOption({
    required this.s3Uri,
  });

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
    TfArg<String>? versionName,
    TfArg<String>? versionNamePrefix,
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
           if (versionName != null) 'version_name': versionName,
           if (versionNamePrefix != null)
             'version_name_prefix': versionNamePrefix,
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

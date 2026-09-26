// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_comprehend_document_classifier`.
const Set<String> _awsComprehendDocumentClassifierSensitive = <String>{};

/// Typed helper for the `input_data_config` block of
/// `aws_comprehend_document_classifier` (derived from provider schema).
@immutable
final class ComprehendDocumentClassifierInputDataConfig {
  const ComprehendDocumentClassifierInputDataConfig({
    this.dataFormat,
    this.labelDelimiter,
    this.s3Uri,
    this.testS3Uri,
    this.augmentedManifests,
  });

  final TfArg<String>? dataFormat;

  final TfArg<String>? labelDelimiter;

  final TfArg<String>? s3Uri;

  final TfArg<String>? testS3Uri;

  final List<ComprehendDocumentClassifierInputDataConfigAugmentedManifests>?
  augmentedManifests;

  Map<String, Object?> encode() => {
    if (dataFormat != null) 'data_format': dataFormat!.toTfJson(),
    if (labelDelimiter != null) 'label_delimiter': labelDelimiter!.toTfJson(),
    if (s3Uri != null) 's3_uri': s3Uri!.toTfJson(),
    if (testS3Uri != null) 'test_s3_uri': testS3Uri!.toTfJson(),
    if (augmentedManifests != null)
      'augmented_manifests': [for (final e in augmentedManifests!) e.encode()],
  };
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

  final TfArg<String>? documentType;

  final TfArg<String> s3Uri;

  final TfArg<String>? sourceDocumentsS3Uri;

  final TfArg<String>? split;

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
    required TfArg<String> languageCode,
    TfArg<String>? mode,
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

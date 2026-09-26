// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_comprehend_entity_recognizer`.
const Set<String> _awsComprehendEntityRecognizerSensitive = <String>{};

/// Typed helper for the `input_data_config` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerInputDataConfig {
  const ComprehendEntityRecognizerInputDataConfig({
    this.dataFormat,
    this.annotations,
    this.augmentedManifests,
    this.documents,
    this.entityList,
    required this.entityTypes,
  });

  final TfArg<String>? dataFormat;

  final ComprehendEntityRecognizerInputDataConfigAnnotations? annotations;

  final List<ComprehendEntityRecognizerInputDataConfigAugmentedManifests>?
  augmentedManifests;

  final ComprehendEntityRecognizerInputDataConfigDocuments? documents;

  final ComprehendEntityRecognizerInputDataConfigEntityList? entityList;

  final List<ComprehendEntityRecognizerInputDataConfigEntityTypes> entityTypes;

  Map<String, Object?> encode() => {
    if (dataFormat != null) 'data_format': dataFormat!.toTfJson(),
    if (annotations != null) 'annotations': annotations!.encode(),
    if (augmentedManifests != null)
      'augmented_manifests': [for (final e in augmentedManifests!) e.encode()],
    if (documents != null) 'documents': documents!.encode(),
    if (entityList != null) 'entity_list': entityList!.encode(),
    'entity_types': [for (final e in entityTypes) e.encode()],
  };
}

/// Typed helper for the `input_data_config.annotations` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerInputDataConfigAnnotations {
  const ComprehendEntityRecognizerInputDataConfigAnnotations({
    required this.s3Uri,
    this.testS3Uri,
  });

  final TfArg<String> s3Uri;

  final TfArg<String>? testS3Uri;

  Map<String, Object?> encode() => {
    's3_uri': s3Uri.toTfJson(),
    if (testS3Uri != null) 'test_s3_uri': testS3Uri!.toTfJson(),
  };
}

/// Typed helper for the `input_data_config.augmented_manifests` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerInputDataConfigAugmentedManifests {
  const ComprehendEntityRecognizerInputDataConfigAugmentedManifests({
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

/// Typed helper for the `input_data_config.documents` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerInputDataConfigDocuments {
  const ComprehendEntityRecognizerInputDataConfigDocuments({
    this.inputFormat,
    required this.s3Uri,
    this.testS3Uri,
  });

  final TfArg<String>? inputFormat;

  final TfArg<String> s3Uri;

  final TfArg<String>? testS3Uri;

  Map<String, Object?> encode() => {
    if (inputFormat != null) 'input_format': inputFormat!.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (testS3Uri != null) 'test_s3_uri': testS3Uri!.toTfJson(),
  };
}

/// Typed helper for the `input_data_config.entity_list` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerInputDataConfigEntityList {
  const ComprehendEntityRecognizerInputDataConfigEntityList({
    required this.s3Uri,
  });

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// Typed helper for the `input_data_config.entity_types` block of
/// `aws_comprehend_entity_recognizer` (derived from provider schema).
@immutable
final class ComprehendEntityRecognizerInputDataConfigEntityTypes {
  const ComprehendEntityRecognizerInputDataConfigEntityTypes({
    required this.type,
  });

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

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnets;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnets': subnets.toTfJson(),
  };
}

/// Factory wrapper for `aws_comprehend_entity_recognizer`.
final class AwsComprehendEntityRecognizer extends Resource {
  static const String tfType = 'aws_comprehend_entity_recognizer';

  AwsComprehendEntityRecognizer({
    required super.localName,
    required TfArg<String> dataAccessRoleArn,
    required TfArg<String> languageCode,
    TfArg<String>? modelKmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? versionName,
    TfArg<String>? versionNamePrefix,
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
           if (modelKmsKeyId != null) 'model_kms_key_id': modelKmsKeyId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (versionName != null) 'version_name': versionName,
           if (versionNamePrefix != null)
             'version_name_prefix': versionNamePrefix,
           if (volumeKmsKeyId != null) 'volume_kms_key_id': volumeKmsKeyId,
           'input_data_config': TfArg.literal(inputDataConfig.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsComprehendEntityRecognizerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

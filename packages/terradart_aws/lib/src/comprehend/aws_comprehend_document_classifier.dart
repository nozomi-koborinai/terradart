// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

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
  ) = ComprehendDocumentClassifierVersionNameChoice;

  /// Sets `version_name_prefix`.
  const factory ComprehendDocumentClassifierVersionName.versionNamePrefix(
    TfArg<String> versionNamePrefix,
  ) = ComprehendDocumentClassifierVersionNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComprehendDocumentClassifierVersionName.versionName] choice: sets `version_name`.
final class ComprehendDocumentClassifierVersionNameChoice
    extends ComprehendDocumentClassifierVersionName {
  const ComprehendDocumentClassifierVersionNameChoice(this.versionName);

  final TfArg<String> versionName;

  @override
  String get blockKey => 'version_name';

  @override
  Map<String, Object?> encode() => {'version_name': versionName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'version_name': versionName};
}

/// The [ComprehendDocumentClassifierVersionName.versionNamePrefix] choice: sets `version_name_prefix`.
final class ComprehendDocumentClassifierVersionNamePrefix
    extends ComprehendDocumentClassifierVersionName {
  const ComprehendDocumentClassifierVersionNamePrefix(this.versionNamePrefix);

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

  final TfArg<ComprehendDocumentClassifierDataFormat>? dataFormat;

  final TfArg<ComprehendDocumentClassifierLabelDelimiter>? labelDelimiter;

  final ComprehendDocumentClassifierSource source;

  final TfArg<String>? testS3Uri;

  Map<String, Object?> encode() => {
    'data_format': ?dataFormat?.toTfJson(),
    'label_delimiter': ?labelDelimiter?.toTfJson(),
    ...source.encode(),
    'test_s3_uri': ?testS3Uri?.toTfJson(),
  };
}

/// Exactly one of `augmented_manifests`, `s3_uri` on the `input_data_config` block of `aws_comprehend_document_classifier`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.augmentedManifests(...)`.
sealed class ComprehendDocumentClassifierSource {
  const ComprehendDocumentClassifierSource();

  /// Sets `augmented_manifests`.
  const factory ComprehendDocumentClassifierSource.augmentedManifests(
    List<ComprehendDocumentClassifierAugmentedManifests> augmentedManifests,
  ) = ComprehendDocumentClassifierSourceAugmentedManifests;

  /// Sets `s3_uri`.
  const factory ComprehendDocumentClassifierSource.s3Uri(TfArg<String> s3Uri) =
      ComprehendDocumentClassifierSourceS3Uri;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ComprehendDocumentClassifierSource.augmentedManifests] choice: sets `augmented_manifests`.
final class ComprehendDocumentClassifierSourceAugmentedManifests
    extends ComprehendDocumentClassifierSource {
  const ComprehendDocumentClassifierSourceAugmentedManifests(
    this.augmentedManifests,
  );

  final List<ComprehendDocumentClassifierAugmentedManifests> augmentedManifests;

  @override
  String get blockKey => 'augmented_manifests';

  @override
  Map<String, Object?> encode() => {
    'augmented_manifests': [for (final e in augmentedManifests) e.encode()],
  };
}

/// The [ComprehendDocumentClassifierSource.s3Uri] choice: sets `s3_uri`.
final class ComprehendDocumentClassifierSourceS3Uri
    extends ComprehendDocumentClassifierSource {
  const ComprehendDocumentClassifierSourceS3Uri(this.s3Uri);

  final TfArg<String> s3Uri;

  @override
  String get blockKey => 's3_uri';

  @override
  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// `data_format` — derived from the provider schema description.
enum ComprehendDocumentClassifierDataFormat implements TerraformEnum {
  comprehendCsv('COMPREHEND_CSV'),
  augmentedManifest('AUGMENTED_MANIFEST');

  const ComprehendDocumentClassifierDataFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `label_delimiter` — derived from the provider schema description.
enum ComprehendDocumentClassifierLabelDelimiter implements TerraformEnum {
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

  const ComprehendDocumentClassifierLabelDelimiter(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_data_config.augmented_manifests` block of
/// `aws_comprehend_document_classifier` (derived from provider schema).
@immutable
final class ComprehendDocumentClassifierAugmentedManifests {
  const ComprehendDocumentClassifierAugmentedManifests({
    this.annotationDataS3Uri,
    required this.attributeNames,
    this.documentType,
    required this.s3Uri,
    this.sourceDocumentsS3Uri,
    this.split,
  });

  final TfArg<String>? annotationDataS3Uri;

  final TfArg<List<String>> attributeNames;

  final TfArg<ComprehendDocumentClassifierDocumentType>? documentType;

  final TfArg<String> s3Uri;

  final TfArg<String>? sourceDocumentsS3Uri;

  final TfArg<ComprehendDocumentClassifierSplit>? split;

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
enum ComprehendDocumentClassifierDocumentType implements TerraformEnum {
  plainTextDocument('PLAIN_TEXT_DOCUMENT'),
  semiStructuredDocument('SEMI_STRUCTURED_DOCUMENT');

  const ComprehendDocumentClassifierDocumentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `split` — derived from the provider schema description.
enum ComprehendDocumentClassifierSplit implements TerraformEnum {
  train('TRAIN'),
  test('TEST');

  const ComprehendDocumentClassifierSplit(this.terraformValue);
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

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
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

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
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
           'mode': ?mode,
           'model_kms_key_id': ?modelKmsKeyId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           ...?versionName?.argMap,
           'volume_kms_key_id': ?volumeKmsKeyId,
           'input_data_config': TfArg.literal(inputDataConfig.encode()),
           if (outputDataConfig != null)
             'output_data_config': TfArg.literal(outputDataConfig.encode()),
           if (vpcConfig != null)
             'vpc_config': TfArg.literal(vpcConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsComprehendDocumentClassifierSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsComprehendDocumentClassifier>`.
  RefTo<AwsComprehendDocumentClassifier> get ref => RefTo.of(this);

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

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

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

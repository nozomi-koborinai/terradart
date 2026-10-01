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
extension type const ComprehendDocumentClassifierLanguageCode._(TfArg<String> _)
    implements TfArg<String> {
  ComprehendDocumentClassifierLanguageCode.variable(String name)
    : this._(TfArg.variable(name));
  ComprehendDocumentClassifierLanguageCode.expression(String template)
    : this._(TfArg.expression(template));
  const ComprehendDocumentClassifierLanguageCode.arg(TfArg<String> arg)
    : this._(arg);

  static const en = ComprehendDocumentClassifierLanguageCode._(
    TfArgLiteral('en'),
  );
  static const es = ComprehendDocumentClassifierLanguageCode._(
    TfArgLiteral('es'),
  );
  static const fr = ComprehendDocumentClassifierLanguageCode._(
    TfArgLiteral('fr'),
  );
  static const de = ComprehendDocumentClassifierLanguageCode._(
    TfArgLiteral('de'),
  );
  static const it = ComprehendDocumentClassifierLanguageCode._(
    TfArgLiteral('it'),
  );
  static const pt = ComprehendDocumentClassifierLanguageCode._(
    TfArgLiteral('pt'),
  );

  static const List<ComprehendDocumentClassifierLanguageCode> values = [
    en,
    es,
    fr,
    de,
    it,
    pt,
  ];
}

/// Comprehend Document Classifier enum for `mode`.
extension type const ComprehendDocumentClassifierMode._(TfArg<String> _)
    implements TfArg<String> {
  ComprehendDocumentClassifierMode.variable(String name)
    : this._(TfArg.variable(name));
  ComprehendDocumentClassifierMode.expression(String template)
    : this._(TfArg.expression(template));
  const ComprehendDocumentClassifierMode.arg(TfArg<String> arg) : this._(arg);

  static const multiClass = ComprehendDocumentClassifierMode._(
    TfArgLiteral('MULTI_CLASS'),
  );
  static const multiLabel = ComprehendDocumentClassifierMode._(
    TfArgLiteral('MULTI_LABEL'),
  );

  static const List<ComprehendDocumentClassifierMode> values = [
    multiClass,
    multiLabel,
  ];
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComprehendDocumentClassifierVersionName.versionName] choice: sets `version_name`.
final class ComprehendDocumentClassifierVersionNameChoice
    extends ComprehendDocumentClassifierVersionName {
  const ComprehendDocumentClassifierVersionNameChoice(this.versionName);

  final TfArg<String> versionName;

  @internal
  @override
  String get blockKey => 'version_name';

  @internal
  @override
  Map<String, Object?> encode() => {'version_name': versionName.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'version_name': versionName};
}

/// The [ComprehendDocumentClassifierVersionName.versionNamePrefix] choice: sets `version_name_prefix`.
final class ComprehendDocumentClassifierVersionNamePrefix
    extends ComprehendDocumentClassifierVersionName {
  const ComprehendDocumentClassifierVersionNamePrefix(this.versionNamePrefix);

  final TfArg<String> versionNamePrefix;

  @internal
  @override
  String get blockKey => 'version_name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {
    'version_name_prefix': versionNamePrefix.toTfJson(),
  };

  @internal
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

  final ComprehendDocumentClassifierDataFormat? dataFormat;

  final ComprehendDocumentClassifierLabelDelimiter? labelDelimiter;

  final ComprehendDocumentClassifierSource source;

  final TfArg<String>? testS3Uri;

  @internal
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ComprehendDocumentClassifierSource.augmentedManifests] choice: sets `augmented_manifests`.
final class ComprehendDocumentClassifierSourceAugmentedManifests
    extends ComprehendDocumentClassifierSource {
  const ComprehendDocumentClassifierSourceAugmentedManifests(
    this.augmentedManifests,
  );

  final List<ComprehendDocumentClassifierAugmentedManifests> augmentedManifests;

  @internal
  @override
  String get blockKey => 'augmented_manifests';

  @internal
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

  @internal
  @override
  String get blockKey => 's3_uri';

  @internal
  @override
  Map<String, Object?> encode() => {'s3_uri': s3Uri.toTfJson()};
}

/// `data_format` — derived from the provider schema description.
extension type const ComprehendDocumentClassifierDataFormat._(TfArg<String> _)
    implements TfArg<String> {
  ComprehendDocumentClassifierDataFormat.variable(String name)
    : this._(TfArg.variable(name));
  ComprehendDocumentClassifierDataFormat.expression(String template)
    : this._(TfArg.expression(template));
  const ComprehendDocumentClassifierDataFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const comprehendCsv = ComprehendDocumentClassifierDataFormat._(
    TfArgLiteral('COMPREHEND_CSV'),
  );
  static const augmentedManifest = ComprehendDocumentClassifierDataFormat._(
    TfArgLiteral('AUGMENTED_MANIFEST'),
  );

  static const List<ComprehendDocumentClassifierDataFormat> values = [
    comprehendCsv,
    augmentedManifest,
  ];
}

/// `label_delimiter` — derived from the provider schema description.
extension type const ComprehendDocumentClassifierLabelDelimiter._(
  TfArg<String> _
) implements TfArg<String> {
  ComprehendDocumentClassifierLabelDelimiter.variable(String name)
    : this._(TfArg.variable(name));
  ComprehendDocumentClassifierLabelDelimiter.expression(String template)
    : this._(TfArg.expression(template));
  const ComprehendDocumentClassifierLabelDelimiter.arg(TfArg<String> arg)
    : this._(arg);

  static const value = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('|'),
  );
  static const value2 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('~'),
  );
  static const value3 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('!'),
  );
  static const value4 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('@'),
  );
  static const value5 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('#'),
  );
  static const value6 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('\$'),
  );
  static const value7 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('%'),
  );
  static const value8 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('^'),
  );
  static const value9 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('*'),
  );
  static const value10 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('-'),
  );
  static const value11 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('_'),
  );
  static const value12 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('+'),
  );
  static const eq = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('='),
  );
  static const value13 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('\\'),
  );
  static const value14 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral(':'),
  );
  static const value15 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral(';'),
  );
  static const gt = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('>'),
  );
  static const value16 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('?'),
  );
  static const value17 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('/'),
  );
  static const value18 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral(' '),
  );
  static const value19 = ComprehendDocumentClassifierLabelDelimiter._(
    TfArgLiteral('	'),
  );

  static const List<ComprehendDocumentClassifierLabelDelimiter> values = [
    value,
    value2,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value9,
    value10,
    value11,
    value12,
    eq,
    value13,
    value14,
    value15,
    gt,
    value16,
    value17,
    value18,
    value19,
  ];
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

  final ComprehendDocumentClassifierDocumentType? documentType;

  final TfArg<String> s3Uri;

  final TfArg<String>? sourceDocumentsS3Uri;

  final ComprehendDocumentClassifierSplit? split;

  @internal
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
extension type const ComprehendDocumentClassifierDocumentType._(TfArg<String> _)
    implements TfArg<String> {
  ComprehendDocumentClassifierDocumentType.variable(String name)
    : this._(TfArg.variable(name));
  ComprehendDocumentClassifierDocumentType.expression(String template)
    : this._(TfArg.expression(template));
  const ComprehendDocumentClassifierDocumentType.arg(TfArg<String> arg)
    : this._(arg);

  static const plainTextDocument = ComprehendDocumentClassifierDocumentType._(
    TfArgLiteral('PLAIN_TEXT_DOCUMENT'),
  );
  static const semiStructuredDocument =
      ComprehendDocumentClassifierDocumentType._(
        TfArgLiteral('SEMI_STRUCTURED_DOCUMENT'),
      );

  static const List<ComprehendDocumentClassifierDocumentType> values = [
    plainTextDocument,
    semiStructuredDocument,
  ];
}

/// `split` — derived from the provider schema description.
extension type const ComprehendDocumentClassifierSplit._(TfArg<String> _)
    implements TfArg<String> {
  ComprehendDocumentClassifierSplit.variable(String name)
    : this._(TfArg.variable(name));
  ComprehendDocumentClassifierSplit.expression(String template)
    : this._(TfArg.expression(template));
  const ComprehendDocumentClassifierSplit.arg(TfArg<String> arg) : this._(arg);

  static const train = ComprehendDocumentClassifierSplit._(
    TfArgLiteral('TRAIN'),
  );
  static const test = ComprehendDocumentClassifierSplit._(TfArgLiteral('TEST'));

  static const List<ComprehendDocumentClassifierSplit> values = [train, test];
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_comprehend_document_classifier`.
final class AwsComprehendDocumentClassifier extends Resource {
  static const String tfType = 'aws_comprehend_document_classifier';

  AwsComprehendDocumentClassifier(
    super.localName, {
    required TfArg<String> dataAccessRoleArn,
    required ComprehendDocumentClassifierLanguageCode languageCode,
    ComprehendDocumentClassifierMode? mode,
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

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_organization_conformance_pack`.
const Set<String> _awsConfigOrganizationConformancePackSensitive = <String>{};

/// At most one of `template_body`, `template_s3_uri` on `aws_config_organization_conformance_pack`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.templateBody(...)`.
sealed class ConfigOrganizationConformancePackTemplate {
  const ConfigOrganizationConformancePackTemplate();

  /// Sets `template_body`.
  const factory ConfigOrganizationConformancePackTemplate.templateBody(
    TfArg<String> templateBody,
  ) = ConfigOrganizationConformancePackTemplateTemplateBody;

  /// Sets `template_s3_uri`.
  const factory ConfigOrganizationConformancePackTemplate.templateS3Uri(
    TfArg<String> templateS3Uri,
  ) = ConfigOrganizationConformancePackTemplateTemplateS3Uri;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ConfigOrganizationConformancePackTemplate.templateBody] choice: sets `template_body`.
final class ConfigOrganizationConformancePackTemplateTemplateBody
    extends ConfigOrganizationConformancePackTemplate {
  const ConfigOrganizationConformancePackTemplateTemplateBody(
    this.templateBody,
  );

  final TfArg<String> templateBody;

  @override
  String get blockKey => 'template_body';

  @override
  Map<String, Object?> encode() => {'template_body': templateBody.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'template_body': templateBody};
}

/// The [ConfigOrganizationConformancePackTemplate.templateS3Uri] choice: sets `template_s3_uri`.
final class ConfigOrganizationConformancePackTemplateTemplateS3Uri
    extends ConfigOrganizationConformancePackTemplate {
  const ConfigOrganizationConformancePackTemplateTemplateS3Uri(
    this.templateS3Uri,
  );

  final TfArg<String> templateS3Uri;

  @override
  String get blockKey => 'template_s3_uri';

  @override
  Map<String, Object?> encode() => {
    'template_s3_uri': templateS3Uri.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'template_s3_uri': templateS3Uri};
}

/// Typed helper for the `input_parameter` block of
/// `aws_config_organization_conformance_pack` (derived from provider schema).
@immutable
final class ConfigOrganizationConformancePackInputParameter {
  const ConfigOrganizationConformancePackInputParameter({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Factory wrapper for `aws_config_organization_conformance_pack`.
final class AwsConfigOrganizationConformancePack extends Resource {
  static const String tfType = 'aws_config_organization_conformance_pack';

  AwsConfigOrganizationConformancePack({
    required super.localName,
    TfArg<String>? deliveryS3Bucket,
    TfArg<String>? deliveryS3KeyPrefix,
    TfArg<List<String>>? excludedAccounts,
    required TfArg<String> name,
    TfArg<String>? region,
    ConfigOrganizationConformancePackTemplate? template,
    List<ConfigOrganizationConformancePackInputParameter>? inputParameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'delivery_s3_bucket': ?deliveryS3Bucket,
           'delivery_s3_key_prefix': ?deliveryS3KeyPrefix,
           'excluded_accounts': ?excludedAccounts,
           'name': name,
           'region': ?region,
           ...?template?.argMap,
           if (inputParameter != null)
             'input_parameter': TfArg.literal([
               for (final e in inputParameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsConfigOrganizationConformancePackSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigOrganizationConformancePack>`.
  RefTo<AwsConfigOrganizationConformancePack> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

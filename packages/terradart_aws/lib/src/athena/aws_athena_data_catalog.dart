// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_athena_data_catalog`.
const Set<String> _awsAthenaDataCatalogSensitive = <String>{};

/// Athena Data Catalog enum for `type`.
enum AthenaDataCatalogType implements TerraformEnum {
  lambda('LAMBDA'),
  glue('GLUE'),
  hive('HIVE'),
  federated('FEDERATED');

  const AthenaDataCatalogType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_athena_data_catalog`.
final class AwsAthenaDataCatalog extends Resource {
  static const String tfType = 'aws_athena_data_catalog';

  AwsAthenaDataCatalog({
    required super.localName,
    required TfArg<String> description,
    required TfArg<String> name,
    required TfArg<Map<String, String>> parameters,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<AthenaDataCatalogType> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': description,
           'name': name,
           'parameters': parameters,
           'region': ?region,
           'tags': ?tags,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaDataCatalogSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAthenaDataCatalog>`.
  RefTo<AwsAthenaDataCatalog> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parametersRef =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}

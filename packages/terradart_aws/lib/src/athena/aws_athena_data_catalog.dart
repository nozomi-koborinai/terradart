// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_athena_data_catalog`.
const Set<String> _awsAthenaDataCatalogSensitive = <String>{};

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
    required TfArg<String> type,
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaDataCatalogSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}

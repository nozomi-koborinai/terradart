// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_connection`.
const Set<String> _awsGlueConnectionSensitive = <String>{
  'athena_properties',
  'connection_properties',
};

/// Factory wrapper for `aws_glue_connection`.
final class DataAwsGlueConnection extends Data {
  static const String tfType = 'aws_glue_connection';

  DataAwsGlueConnection({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'id': id,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueConnectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `athena_properties` attribute.
  TfRef<Map<String, String>> get athenaProperties =>
      TfRef.attribute<Map<String, String>>(this, 'athena_properties');

  /// Reference to `authentication_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get authenticationConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'authentication_configuration',
      );

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `connection_properties` attribute.
  TfRef<Map<String, String>> get connectionProperties =>
      TfRef.attribute<Map<String, String>>(this, 'connection_properties');

  /// Reference to `connection_type` attribute.
  TfRef<String> get connectionType =>
      TfRef.attribute<String>(this, 'connection_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `match_criteria` attribute.
  TfRef<List<String>> get matchCriteria =>
      TfRef.attribute<List<String>>(this, 'match_criteria');

  /// Reference to `physical_connection_requirements` attribute.
  TfRef<List<Map<String, Object?>>> get physicalConnectionRequirements =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'physical_connection_requirements',
      );
}

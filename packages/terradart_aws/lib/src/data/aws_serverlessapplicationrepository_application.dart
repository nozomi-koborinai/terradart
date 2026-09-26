// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_serverlessapplicationrepository_application`.
const Set<String> _awsServerlessapplicationrepositoryApplicationSensitive =
    <String>{};

/// Factory wrapper for `aws_serverlessapplicationrepository_application`.
final class DataAwsServerlessapplicationrepositoryApplication extends Data {
  static const String tfType =
      'aws_serverlessapplicationrepository_application';

  DataAwsServerlessapplicationrepositoryApplication({
    required super.localName,
    required TfArg<String> applicationId,
    TfArg<String>? region,
    TfArg<String>? semanticVersion,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           if (region != null) 'region': region,
           if (semanticVersion != null) 'semantic_version': semanticVersion,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServerlessapplicationrepositoryApplicationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `required_capabilities` attribute.
  TfRef<List<String>> get requiredCapabilities =>
      TfRef.attribute<List<String>>(this, 'required_capabilities');

  /// Reference to `source_code_url` attribute.
  TfRef<String> get sourceCodeUrl =>
      TfRef.attribute<String>(this, 'source_code_url');

  /// Reference to `template_url` attribute.
  TfRef<String> get templateUrl =>
      TfRef.attribute<String>(this, 'template_url');
}

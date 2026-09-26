// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_serverlessapplicationrepository_cloudformation_stack`.
const Set<String>
_awsServerlessapplicationrepositoryCloudformationStackSensitive = <String>{};

/// Factory wrapper for `aws_serverlessapplicationrepository_cloudformation_stack`.
final class AwsServerlessapplicationrepositoryCloudformationStack
    extends Resource {
  static const String tfType =
      'aws_serverlessapplicationrepository_cloudformation_stack';

  AwsServerlessapplicationrepositoryCloudformationStack({
    required super.localName,
    required TfArg<String> applicationId,
    TfArg<List<String>>? capabilities,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? region,
    TfArg<String>? semanticVersion,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           if (capabilities != null) 'capabilities': capabilities,
           'name': name,
           if (parameters != null) 'parameters': parameters,
           if (region != null) 'region': region,
           if (semanticVersion != null) 'semantic_version': semanticVersion,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServerlessapplicationrepositoryCloudformationStackSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `outputs` attribute.
  TfRef<Map<String, String>> get outputs =>
      TfRef.attribute<Map<String, String>>(this, 'outputs');
}

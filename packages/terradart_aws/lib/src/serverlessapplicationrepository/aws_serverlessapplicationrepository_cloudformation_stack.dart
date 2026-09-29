// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_serverlessapplicationrepository_cloudformation_stack`.
const Set<String>
_awsServerlessapplicationrepositoryCloudformationStackSensitive = <String>{};

/// Serverlessapplicationrepository Cloudformation Stack enum for `capabilities`.
enum ServerlessapplicationrepositoryCloudformationStackCapabilities
    implements TerraformEnum {
  capabilityIam('CAPABILITY_IAM'),
  capabilityNamedIam('CAPABILITY_NAMED_IAM'),
  capabilityAutoExpand('CAPABILITY_AUTO_EXPAND'),
  capabilityResourcePolicy('CAPABILITY_RESOURCE_POLICY');

  const ServerlessapplicationrepositoryCloudformationStackCapabilities(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_serverlessapplicationrepository_cloudformation_stack`.
final class AwsServerlessapplicationrepositoryCloudformationStack
    extends Resource {
  static const String tfType =
      'aws_serverlessapplicationrepository_cloudformation_stack';

  AwsServerlessapplicationrepositoryCloudformationStack({
    required super.localName,
    required TfArg<String> applicationId,
    List<TfArg<ServerlessapplicationrepositoryCloudformationStackCapabilities>>?
    capabilities,
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
           if (capabilities != null)
             'capabilities': TfArg.literal([
               for (final e in capabilities) e.toTfJson(),
             ]),
           'name': name,
           'parameters': ?parameters,
           'region': ?region,
           'semantic_version': ?semanticVersion,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServerlessapplicationrepositoryCloudformationStackSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServerlessapplicationrepositoryCloudformationStack>`.
  RefTo<AwsServerlessapplicationrepositoryCloudformationStack> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `outputs` attribute.
  TfRef<Map<String, String>> get outputs =>
      TfRef.attribute<Map<String, String>>(this, 'outputs');
}

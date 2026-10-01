// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_serverlessapplicationrepository_cloudformation_stack`.
const Set<String>
_awsServerlessapplicationrepositoryCloudformationStackSensitive = <String>{};

/// Serverlessapplicationrepository Cloudformation Stack enum for `capabilities`.
extension type const ServerlessapplicationrepositoryCloudformationStackCapabilities._(
  TfArg<String> _
) implements TfArg<String> {
  ServerlessapplicationrepositoryCloudformationStackCapabilities.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ServerlessapplicationrepositoryCloudformationStackCapabilities.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ServerlessapplicationrepositoryCloudformationStackCapabilities.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const capabilityIam =
      ServerlessapplicationrepositoryCloudformationStackCapabilities._(
        TfArgLiteral('CAPABILITY_IAM'),
      );
  static const capabilityNamedIam =
      ServerlessapplicationrepositoryCloudformationStackCapabilities._(
        TfArgLiteral('CAPABILITY_NAMED_IAM'),
      );
  static const capabilityAutoExpand =
      ServerlessapplicationrepositoryCloudformationStackCapabilities._(
        TfArgLiteral('CAPABILITY_AUTO_EXPAND'),
      );
  static const capabilityResourcePolicy =
      ServerlessapplicationrepositoryCloudformationStackCapabilities._(
        TfArgLiteral('CAPABILITY_RESOURCE_POLICY'),
      );

  static const List<
    ServerlessapplicationrepositoryCloudformationStackCapabilities
  >
  values = [
    capabilityIam,
    capabilityNamedIam,
    capabilityAutoExpand,
    capabilityResourcePolicy,
  ];
}

/// Factory wrapper for `aws_serverlessapplicationrepository_cloudformation_stack`.
final class AwsServerlessapplicationrepositoryCloudformationStack
    extends Resource {
  static const String tfType =
      'aws_serverlessapplicationrepository_cloudformation_stack';

  AwsServerlessapplicationrepositoryCloudformationStack(
    super.localName, {
    required TfArg<String> applicationId,
    List<ServerlessapplicationrepositoryCloudformationStackCapabilities>?
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `outputs` attribute.
  TfRef<Map<String, String>> get outputs =>
      TfRef.attribute<Map<String, String>>(this, 'outputs');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `capabilities` attribute.
  TfRef<List<String>> get capabilities =>
      TfRef.attribute<List<String>>(this, 'capabilities');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `semantic_version` attribute.
  TfRef<String> get semanticVersion =>
      TfRef.attribute<String>(this, 'semantic_version');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

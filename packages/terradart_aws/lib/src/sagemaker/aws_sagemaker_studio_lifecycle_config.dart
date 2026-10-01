// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_studio_lifecycle_config`.
const Set<String> _awsSagemakerStudioLifecycleConfigSensitive = <String>{};

/// Sagemaker Studio Lifecycle Config App enum for `studio_lifecycle_config_app_type`.
extension type const SagemakerStudioLifecycleConfigAppType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerStudioLifecycleConfigAppType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerStudioLifecycleConfigAppType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerStudioLifecycleConfigAppType.arg(TfArg<String> arg)
    : this._(arg);

  static const jupyterserver = SagemakerStudioLifecycleConfigAppType._(
    TfArgLiteral('JupyterServer'),
  );
  static const kernelgateway = SagemakerStudioLifecycleConfigAppType._(
    TfArgLiteral('KernelGateway'),
  );
  static const codeeditor = SagemakerStudioLifecycleConfigAppType._(
    TfArgLiteral('CodeEditor'),
  );
  static const jupyterlab = SagemakerStudioLifecycleConfigAppType._(
    TfArgLiteral('JupyterLab'),
  );

  static const List<SagemakerStudioLifecycleConfigAppType> values = [
    jupyterserver,
    kernelgateway,
    codeeditor,
    jupyterlab,
  ];
}

/// Factory wrapper for `aws_sagemaker_studio_lifecycle_config`.
final class AwsSagemakerStudioLifecycleConfig extends Resource {
  static const String tfType = 'aws_sagemaker_studio_lifecycle_config';

  AwsSagemakerStudioLifecycleConfig(
    super.localName, {
    TfArg<String>? region,
    required SagemakerStudioLifecycleConfigAppType studioLifecycleConfigAppType,
    required TfArg<String> studioLifecycleConfigContent,
    required TfArg<String> studioLifecycleConfigName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'studio_lifecycle_config_app_type': studioLifecycleConfigAppType,
           'studio_lifecycle_config_content': studioLifecycleConfigContent,
           'studio_lifecycle_config_name': studioLifecycleConfigName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSagemakerStudioLifecycleConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerStudioLifecycleConfig>`.
  RefTo<AwsSagemakerStudioLifecycleConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `studio_lifecycle_config_app_type` attribute.
  TfRef<String> get studioLifecycleConfigAppType =>
      TfRef.attribute<String>(this, 'studio_lifecycle_config_app_type');

  /// Reference to `studio_lifecycle_config_content` attribute.
  TfRef<String> get studioLifecycleConfigContent =>
      TfRef.attribute<String>(this, 'studio_lifecycle_config_content');

  /// Reference to `studio_lifecycle_config_name` attribute.
  TfRef<String> get studioLifecycleConfigName =>
      TfRef.attribute<String>(this, 'studio_lifecycle_config_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

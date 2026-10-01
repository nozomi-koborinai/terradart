// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_sagemaker_mlflow_app`.
const Set<String> _awsSagemakerMlflowAppSensitive = <String>{};

/// Sagemaker Mlflow App Account Default enum for `account_default_status`.
extension type const SagemakerMlflowAppAccountDefaultStatus._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerMlflowAppAccountDefaultStatus.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerMlflowAppAccountDefaultStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerMlflowAppAccountDefaultStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SagemakerMlflowAppAccountDefaultStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SagemakerMlflowAppAccountDefaultStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SagemakerMlflowAppAccountDefaultStatus> values = [
    enabled,
    disabled,
  ];
}

/// Sagemaker Mlflow App Model Registration enum for `model_registration_mode`.
extension type const SagemakerMlflowAppModelRegistrationMode._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerMlflowAppModelRegistrationMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerMlflowAppModelRegistrationMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerMlflowAppModelRegistrationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const automodelregistrationenabled =
      SagemakerMlflowAppModelRegistrationMode._(
        TfArgLiteral('AutoModelRegistrationEnabled'),
      );
  static const automodelregistrationdisabled =
      SagemakerMlflowAppModelRegistrationMode._(
        TfArgLiteral('AutoModelRegistrationDisabled'),
      );

  static const List<SagemakerMlflowAppModelRegistrationMode> values = [
    automodelregistrationenabled,
    automodelregistrationdisabled,
  ];
}

/// Factory wrapper for `aws_sagemaker_mlflow_app`.
final class AwsSagemakerMlflowApp extends Resource {
  static const String tfType = 'aws_sagemaker_mlflow_app';

  AwsSagemakerMlflowApp(
    super.localName, {
    SagemakerMlflowAppAccountDefaultStatus? accountDefaultStatus,
    required TfArg<String> artifactStoreUri,
    TfArg<List<String>>? defaultDomainIdList,
    SagemakerMlflowAppModelRegistrationMode? modelRegistrationMode,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? weeklyMaintenanceWindowStart,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_default_status': ?accountDefaultStatus,
           'artifact_store_uri': artifactStoreUri,
           'default_domain_id_list': ?defaultDomainIdList,
           'model_registration_mode': ?modelRegistrationMode,
           'name': name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'weekly_maintenance_window_start': ?weeklyMaintenanceWindowStart,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerMlflowAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerMlflowApp>`.
  RefTo<AwsSagemakerMlflowApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `account_default_status` attribute.
  TfRef<String> get accountDefaultStatus =>
      TfRef.attribute<String>(this, 'account_default_status');

  /// Reference to `artifact_store_uri` attribute.
  TfRef<String> get artifactStoreUri =>
      TfRef.attribute<String>(this, 'artifact_store_uri');

  /// Reference to `default_domain_id_list` attribute.
  TfRef<List<String>> get defaultDomainIdList =>
      TfRef.attribute<List<String>>(this, 'default_domain_id_list');

  /// Reference to `model_registration_mode` attribute.
  TfRef<String> get modelRegistrationMode =>
      TfRef.attribute<String>(this, 'model_registration_mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `weekly_maintenance_window_start` attribute.
  TfRef<String> get weeklyMaintenanceWindowStart =>
      TfRef.attribute<String>(this, 'weekly_maintenance_window_start');
}

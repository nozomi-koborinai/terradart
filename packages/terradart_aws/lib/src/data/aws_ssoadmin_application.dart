// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssoadmin/aws_ssoadmin_application.dart';

/// Sensitive field paths for `aws_ssoadmin_application`.
const Set<String> _awsSsoadminApplicationSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_application`.
final class DataAwsSsoadminApplication extends Data {
  static const String tfType = 'aws_ssoadmin_application';

  DataAwsSsoadminApplication({
    required super.localName,
    required TfArg<String> applicationArn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'application_arn': applicationArn, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminApplicationSensitive;

  /// A reference to the `aws_ssoadmin_application` this data source reads, for
  /// arguments typed `RefTo<AwsSsoadminApplication>`.
  RefTo<AwsSsoadminApplication> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_account` attribute.
  TfRef<String> get applicationAccount =>
      TfRef.attribute<String>(this, 'application_account');

  /// Reference to `application_provider_arn` attribute.
  TfRef<String> get applicationProviderArn =>
      TfRef.attribute<String>(this, 'application_provider_arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instance_arn` attribute.
  TfRef<String> get instanceArn =>
      TfRef.attribute<String>(this, 'instance_arn');

  /// Reference to `portal_options` attribute.
  TfRef<List<Map<String, Object?>>> get portalOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'portal_options');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `application_arn` attribute.
  TfRef<String> get applicationArnRef =>
      TfRef.attribute<String>(this, 'application_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}

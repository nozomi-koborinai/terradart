// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_application_access_scope`.
const Set<String> _awsSsoadminApplicationAccessScopeSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_application_access_scope`.
final class AwsSsoadminApplicationAccessScope extends Resource {
  static const String tfType = 'aws_ssoadmin_application_access_scope';

  AwsSsoadminApplicationAccessScope({
    required super.localName,
    required TfArg<String> applicationArn,
    TfArg<List<String>>? authorizedTargets,
    TfArg<String>? region,
    required TfArg<String> scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_arn': applicationArn,
           'authorized_targets': ?authorizedTargets,
           'region': ?region,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminApplicationAccessScopeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsoadminApplicationAccessScope>`.
  RefTo<AwsSsoadminApplicationAccessScope> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_arn` attribute.
  TfRef<String> get applicationArn =>
      TfRef.attribute<String>(this, 'application_arn');

  /// Reference to `authorized_targets` attribute.
  TfRef<List<String>> get authorizedTargets =>
      TfRef.attribute<List<String>>(this, 'authorized_targets');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}

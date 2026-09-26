// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_delegated_administrator`.
const Set<String> _awsOrganizationsDelegatedAdministratorSensitive = <String>{};

/// Factory wrapper for `aws_organizations_delegated_administrator`.
final class AwsOrganizationsDelegatedAdministrator extends Resource {
  static const String tfType = 'aws_organizations_delegated_administrator';

  AwsOrganizationsDelegatedAdministrator({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> servicePrincipal,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'service_principal': servicePrincipal,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOrganizationsDelegatedAdministratorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `delegation_enabled_date` attribute.
  TfRef<String> get delegationEnabledDate =>
      TfRef.attribute<String>(this, 'delegation_enabled_date');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `joined_method` attribute.
  TfRef<String> get joinedMethod =>
      TfRef.attribute<String>(this, 'joined_method');

  /// Reference to `joined_timestamp` attribute.
  TfRef<String> get joinedTimestamp =>
      TfRef.attribute<String>(this, 'joined_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}

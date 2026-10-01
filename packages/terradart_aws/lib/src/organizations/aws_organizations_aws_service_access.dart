// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_aws_service_access`.
const Set<String> _awsOrganizationsAwsServiceAccessSensitive = <String>{};

/// Factory wrapper for `aws_organizations_aws_service_access`.
final class AwsOrganizationsAwsServiceAccess extends Resource {
  static const String tfType = 'aws_organizations_aws_service_access';

  AwsOrganizationsAwsServiceAccess(
    super.localName, {
    required TfArg<String> servicePrincipal,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'service_principal': servicePrincipal},
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsAwsServiceAccessSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOrganizationsAwsServiceAccess>`.
  RefTo<AwsOrganizationsAwsServiceAccess> get ref => RefTo.of(this);

  /// Reference to `date_enabled` attribute.
  TfRef<String> get dateEnabled =>
      TfRef.attribute<String>(this, 'date_enabled');

  /// Reference to `service_principal` attribute.
  TfRef<String> get servicePrincipal =>
      TfRef.attribute<String>(this, 'service_principal');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_delegated_administrators`.
const Set<String> _awsOrganizationsDelegatedAdministratorsSensitive =
    <String>{};

/// Factory wrapper for `aws_organizations_delegated_administrators`.
final class DataAwsOrganizationsDelegatedAdministrators extends Data {
  static const String tfType = 'aws_organizations_delegated_administrators';

  DataAwsOrganizationsDelegatedAdministrators({
    required super.localName,
    TfArg<String>? servicePrincipal,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (servicePrincipal != null) 'service_principal': servicePrincipal,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOrganizationsDelegatedAdministratorsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `delegated_administrators` attribute.
  TfRef<List<Map<String, Object?>>> get delegatedAdministrators =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'delegated_administrators',
      );
}

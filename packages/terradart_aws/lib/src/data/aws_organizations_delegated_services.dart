// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_delegated_services`.
const Set<String> _awsOrganizationsDelegatedServicesSensitive = <String>{};

/// Factory wrapper for `aws_organizations_delegated_services`.
final class DataAwsOrganizationsDelegatedServices extends Data {
  static const String tfType = 'aws_organizations_delegated_services';

  DataAwsOrganizationsDelegatedServices({
    required super.localName,
    required TfArg<String> accountId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'account_id': accountId});

  @override
  Set<String> get sensitiveFields =>
      _awsOrganizationsDelegatedServicesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `delegated_services` attribute.
  TfRef<List<Map<String, Object?>>> get delegatedServices =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'delegated_services');
}

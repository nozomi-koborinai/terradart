// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_policies`.
const Set<String> _awsOrganizationsPoliciesSensitive = <String>{};

/// Factory wrapper for `aws_organizations_policies`.
final class DataAwsOrganizationsPolicies extends Data {
  static const String tfType = 'aws_organizations_policies';

  DataAwsOrganizationsPolicies({
    required super.localName,
    required TfArg<String> filter,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'filter': filter});

  @override
  Set<String> get sensitiveFields => _awsOrganizationsPoliciesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}

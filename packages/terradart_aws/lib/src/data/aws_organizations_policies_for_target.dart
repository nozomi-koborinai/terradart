// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_policies_for_target`.
const Set<String> _awsOrganizationsPoliciesForTargetSensitive = <String>{};

/// Factory wrapper for `aws_organizations_policies_for_target`.
final class DataAwsOrganizationsPoliciesForTarget extends Data {
  static const String tfType = 'aws_organizations_policies_for_target';

  DataAwsOrganizationsPoliciesForTarget({
    required super.localName,
    required TfArg<String> filter,
    required TfArg<String> targetId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'filter': filter, 'target_id': targetId},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOrganizationsPoliciesForTargetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_policy`.
const Set<String> _googleIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIamPolicy extends Data {
  static const String tfType = 'google_iam_policy';

  DataGoogleIamPolicy({
    required super.localName,
    TfArg<List<Map<String, dynamic>>>? auditConfig,
    TfArg<List<Map<String, dynamic>>>? binding,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (auditConfig != null) 'audit_config': auditConfig,
           if (binding != null) 'binding': binding,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}

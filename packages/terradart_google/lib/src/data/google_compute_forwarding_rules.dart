// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_forwarding_rules`.
const Set<String> _googleComputeForwardingRulesSensitive = <String>{};

/// Factory wrapper for `google_compute_forwarding_rules`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeForwardingRules extends Data {
  static const String tfType = 'google_compute_forwarding_rules';

  DataGoogleComputeForwardingRules({
    required super.localName,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeForwardingRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `rules` attribute.
  TfRef<List<Map<String, Object?>>> get rules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rules');
}

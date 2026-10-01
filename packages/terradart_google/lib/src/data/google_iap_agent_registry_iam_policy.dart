// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iap/google_iap_agent_registry_iam_policy.dart';

/// Sensitive field paths for `google_iap_agent_registry_iam_policy`.
const Set<String> _googleIapAgentRegistryIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_agent_registry_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIapAgentRegistryIamPolicy extends Data {
  static const String tfType = 'google_iap_agent_registry_iam_policy';

  DataGoogleIapAgentRegistryIamPolicy({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': location, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleIapAgentRegistryIamPolicySensitive;

  /// A reference to the `google_iap_agent_registry_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleIapAgentRegistryIamPolicy>`.
  RefTo<GoogleIapAgentRegistryIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

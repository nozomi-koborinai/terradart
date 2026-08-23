// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_policy`.
const Set<String> _cloudflareZeroTrustAccessPolicySensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_policy`.
///
/// Accepted Permissions
///
/// - `Access: Apps and Policies Read` - `Access: Apps and Policies Write`
final class DataCloudflareZeroTrustAccessPolicy extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_policy';

  DataCloudflareZeroTrustAccessPolicy({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> policyId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'policy_id': policyId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustAccessPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_count` attribute.
  TfRef<num> get appCount => TfRef.attribute<num>(this, 'app_count');

  /// Reference to `approval_required` attribute.
  TfRef<bool> get approvalRequired =>
      TfRef.attribute<bool>(this, 'approval_required');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `decision` attribute.
  TfRef<String> get decision => TfRef.attribute<String>(this, 'decision');

  /// Reference to `isolation_required` attribute.
  TfRef<bool> get isolationRequired =>
      TfRef.attribute<bool>(this, 'isolation_required');

  /// Reference to `purpose_justification_prompt` attribute.
  TfRef<String> get purposeJustificationPrompt =>
      TfRef.attribute<String>(this, 'purpose_justification_prompt');

  /// Reference to `purpose_justification_required` attribute.
  TfRef<bool> get purposeJustificationRequired =>
      TfRef.attribute<bool>(this, 'purpose_justification_required');

  /// Reference to `reusable` attribute.
  TfRef<bool> get reusable => TfRef.attribute<bool>(this, 'reusable');

  /// Reference to `session_duration` attribute.
  TfRef<String> get sessionDuration =>
      TfRef.attribute<String>(this, 'session_duration');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}

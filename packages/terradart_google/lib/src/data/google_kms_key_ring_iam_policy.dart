// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_key_ring_iam_policy`.
const Set<String> _googleKmsKeyRingIamPolicySensitive = <String>{};

/// Factory wrapper for `google_kms_key_ring_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsKeyRingIamPolicy extends Data {
  static const String tfType = 'google_kms_key_ring_iam_policy';

  DataGoogleKmsKeyRingIamPolicy({
    required super.localName,
    required TfArg<String> keyRingId,
  }) : super(terraformType: tfType, argMap: {'key_ring_id': keyRingId});

  @override
  Set<String> get sensitiveFields => _googleKmsKeyRingIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}

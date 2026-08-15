// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_security_policy`.
const Set<String> _googleComputeSecurityPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_security_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeSecurityPolicy extends Data {
  static const String tfType = 'google_compute_security_policy';

  DataGoogleComputeSecurityPolicy({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? project,
    TfArg<String>? selfLink,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (project != null) 'project': project,
           if (selfLink != null) 'self_link': selfLink,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSecurityPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `adaptive_protection_config` attribute.
  TfRef<List<Map<String, Object?>>> get adaptiveProtectionConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'adaptive_protection_config',
      );

  /// Reference to `advanced_options_config` attribute.
  TfRef<List<Map<String, Object?>>> get advancedOptionsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'advanced_options_config',
      );

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `recaptcha_options_config` attribute.
  TfRef<List<Map<String, Object?>>> get recaptchaOptionsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'recaptcha_options_config',
      );

  /// Reference to `rule` attribute.
  TfRef<List<Map<String, Object?>>> get rule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rule');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_site_verification_owner`.
const Set<String> _googleSiteVerificationOwnerSensitive = <String>{};

/// Factory wrapper for `google_site_verification_owner`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleSiteVerificationOwner extends Resource {
  static const String tfType = 'google_site_verification_owner';

  GoogleSiteVerificationOwner({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> email,
    required TfArg<String> webResourceId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'email': email,
           'web_resource_id': webResourceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSiteVerificationOwnerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

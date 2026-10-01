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

  GoogleSiteVerificationOwner(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> email,
    required TfArg<String> webResourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'email': email,
           'web_resource_id': webResourceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSiteVerificationOwnerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSiteVerificationOwner>`.
  RefTo<GoogleSiteVerificationOwner> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `web_resource_id` attribute.
  TfRef<String> get webResourceId =>
      TfRef.attribute<String>(this, 'web_resource_id');
}

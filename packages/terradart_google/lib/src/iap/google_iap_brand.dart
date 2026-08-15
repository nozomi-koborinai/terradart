// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_brand`.
const Set<String> _googleIapBrandSensitive = <String>{};

/// Factory wrapper for `google_iap_brand`.
///
/// OAuth brand data. Only "Organization Internal" brands can be created
/// programmatically via API. To convert it into an external brands please use
/// the GCP Console.
///
/// ~> **Note:** Brands can only be created once for a Google Cloud project and
/// the underlying Google API doesn't not support DELETE or PATCH methods.
/// Destroying a Terraform-managed Brand will remove it from state but *will not
/// delete it from Google Cloud.*
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleIapBrand extends Resource {
  static const String tfType = 'google_iap_brand';

  GoogleIapBrand({
    required super.localName,
    required TfArg<String> applicationTitle,
    TfArg<String>? project,
    required TfArg<String> supportEmail,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_title': applicationTitle,
           if (project != null) 'project': project,
           'support_email': supportEmail,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapBrandSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `org_internal_only` attribute.
  TfRef<bool> get orgInternalOnly =>
      TfRef.attribute<bool>(this, 'org_internal_only');
}

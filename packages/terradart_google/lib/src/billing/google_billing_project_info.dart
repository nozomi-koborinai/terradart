// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_billing_project_info`.
const Set<String> _googleBillingProjectInfoSensitive = <String>{};

/// Factory wrapper for `google_billing_project_info`.
///
/// Billing information for a project.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleBillingProjectInfo extends Resource {
  static const String tfType = 'google_billing_project_info';

  GoogleBillingProjectInfo({
    required super.localName,
    required TfArg<String> billingAccount,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_account': billingAccount,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBillingProjectInfoSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBillingProjectInfo>`.
  RefTo<GoogleBillingProjectInfo> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `billing_account` attribute.
  TfRef<String> get billingAccountRef =>
      TfRef.attribute<String>(this, 'billing_account');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_api`.
const Set<String> _googleApigeeApiSensitive = <String>{};

/// Factory wrapper for `google_apigee_api`.
///
/// Apigee **API proxy** — uploads a proxy config bundle (`config_bundle`)
/// into an organization.
///
/// **Cost / apply:** gcp-cost: Apigee `1C2D-8C78-EC58` Proxy/Shared Flow
/// Deployment Unit Usage Hours Included in Base Environment SKU
/// `20F4-DE1D-0E80` (Intermediate `4836-1B91-161A`; Comprehensive
/// `477D-FA48-D913` / overage `71C2-1AC1-805B`); parent Gateway Node Hours
/// `0136-18C1-DD41` **$1.025/h**. billing-behavior: requires never_apply
/// [GoogleApigeeOrganization]; deploying revisions accrues deployment-unit
/// / environment hours. Debt-only on `terradart-validate`. **Never** wire
/// into apply-smoke.
///
/// Enable `apigee.googleapis.com` before apply. [configBundle] is a local
/// zip path Terraform uploads.
final class GoogleApigeeApi extends Resource {
  static const String tfType = 'google_apigee_api';

  GoogleApigeeApi({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> orgId,
    required TfArg<String> configBundle,
    TfArg<String>? detectMd5hash,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'org_id': orgId,
           'config_bundle': configBundle,
           if (detectMd5hash != null) 'detect_md5hash': detectMd5hash,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeApiSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `latest_revision_id` attribute.
  TfRef<String> get latestRevisionId =>
      TfRef.attribute<String>(this, 'latest_revision_id');

  /// Reference to `md5hash` attribute.
  TfRef<String> get md5hash => TfRef.attribute<String>(this, 'md5hash');

  /// Reference to `meta_data` attribute.
  TfRef<List<Map<String, Object?>>> get metaData =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'meta_data');

  /// Reference to `revision` attribute.
  TfRef<List<String>> get revision =>
      TfRef.attribute<List<String>>(this, 'revision');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `latest_revision_id` attribute.
  TfRef<String> get latestRevisionIdRef =>
      TfRef.attribute<String>(this, 'latest_revision_id');
}

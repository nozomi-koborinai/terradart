// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_environment`.
const Set<String> _googleChronicleEnvironmentSensitive = <String>{};

/// Factory wrapper for `google_chronicle_environment`.
///
/// An environment is logical container for different networks or customers that
/// are managed by the SOC or MSSP. This is useful for SOCs who provide services
/// to several different networks, customers or business units within the
/// organization. The Platform comes with a predefined environment named Default
/// Environment.
///
/// Chronicle (Google SecOps) **environment** — named retention / contact
/// boundary on a Chronicle instance.
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// environments sit on an entitlement-gated Chronicle instance; ingestion
/// and package fees accrue while the SecOps deployment is active. Not
/// applyable on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. [instance] is the
/// Chronicle instance ID in [location] (e.g. `us`).
final class GoogleChronicleEnvironment extends Resource {
  static const String tfType = 'google_chronicle_environment';

  GoogleChronicleEnvironment({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> location,
    required TfArg<String> instance,
    required TfArg<num> retentionDuration,
    required TfArg<String> contact,
    required TfArg<String> contactEmails,
    required TfArg<String> contactPhone,
    required TfArg<String> description,
    TfArg<String>? aliasesJson,
    TfArg<String>? dataAccessScopesJson,
    TfArg<bool>? deletionProtection,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'location': location,
           'instance': instance,
           'retention_duration': retentionDuration,
           'contact': contact,
           'contact_emails': contactEmails,
           'contact_phone': contactPhone,
           'description': description,
           if (aliasesJson != null) 'aliases_json': aliasesJson,
           if (dataAccessScopesJson != null)
             'data_access_scopes_json': dataAccessScopesJson,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleEnvironmentSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_environment`.
const Set<String> _googleChronicleEnvironmentSensitive = <String>{};

/// Typed helper for the `dynamic_parameters` block of
/// `google_chronicle_environment` (derived from provider schema).
@immutable
final class ChronicleEnvironmentDynamicParameters {
  const ChronicleEnvironmentDynamicParameters({
    required this.dynamicParameterId,
    required this.value,
  });

  final TfArg<num> dynamicParameterId;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'dynamic_parameter_id': dynamicParameterId.toTfJson(),
    'value': value.toTfJson(),
  };
}

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

  GoogleChronicleEnvironment(
    super.localName, {
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
    TfArg<String>? base64Image,
    TfArg<String>? instanceUri,
    TfArg<num>? weight,
    List<ChronicleEnvironmentDynamicParameters>? dynamicParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
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
           'aliases_json': ?aliasesJson,
           'data_access_scopes_json': ?dataAccessScopesJson,
           'deletion_protection': ?deletionProtection,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'base64_image': ?base64Image,
           'instance_uri': ?instanceUri,
           'weight': ?weight,
           if (dynamicParameters != null)
             'dynamic_parameters': TfArg.literal([
               for (final e in dynamicParameters) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleEnvironmentSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleEnvironment>`.
  RefTo<GoogleChronicleEnvironment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `aliases_json` attribute.
  TfRef<String> get aliasesJson =>
      TfRef.attribute<String>(this, 'aliases_json');

  /// Reference to `base64_image` attribute.
  TfRef<String> get base64Image =>
      TfRef.attribute<String>(this, 'base64_image');

  /// Reference to `contact` attribute.
  TfRef<String> get contact => TfRef.attribute<String>(this, 'contact');

  /// Reference to `contact_emails` attribute.
  TfRef<String> get contactEmails =>
      TfRef.attribute<String>(this, 'contact_emails');

  /// Reference to `contact_phone` attribute.
  TfRef<String> get contactPhone =>
      TfRef.attribute<String>(this, 'contact_phone');

  /// Reference to `data_access_scopes_json` attribute.
  TfRef<String> get dataAccessScopesJson =>
      TfRef.attribute<String>(this, 'data_access_scopes_json');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `instance_uri` attribute.
  TfRef<String> get instanceUri =>
      TfRef.attribute<String>(this, 'instance_uri');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `retention_duration` attribute.
  TfRef<num> get retentionDuration =>
      TfRef.attribute<num>(this, 'retention_duration');

  /// Reference to `weight` attribute.
  TfRef<num> get weight => TfRef.attribute<num>(this, 'weight');
}

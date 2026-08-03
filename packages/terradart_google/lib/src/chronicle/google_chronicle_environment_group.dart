// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_environment_group`.
const Set<String> _googleChronicleEnvironmentGroupSensitive = <String>{};

/// Factory wrapper for `google_chronicle_environment_group`.
///
/// Environment groups let you organize multiple environments into logical
/// categories, making it easier to manage large organizations or multiple
/// customers as a Managed Security Service Provider (MSSP).
///
/// Chronicle (Google SecOps) **environment group** — named grouping of
/// environment IDs on a Chronicle instance.
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// groups sit on an entitlement-gated Chronicle instance; SecOps package /
/// ingestion fees accrue while the deployment is active. Not applyable on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. [instance] is the
/// Chronicle instance ID in [location] (e.g. `us`).
final class GoogleChronicleEnvironmentGroup extends Resource {
  static const String tfType = 'google_chronicle_environment_group';

  GoogleChronicleEnvironmentGroup({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> description,
    required TfArg<List<String>> environmentsIds,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'description': description,
           'environments_ids': environmentsIds,
           'location': location,
           'instance': instance,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleEnvironmentGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `environment_group_id` attribute.
  TfRef<String> get environmentGroupId =>
      TfRef.attribute<String>(this, 'environment_group_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

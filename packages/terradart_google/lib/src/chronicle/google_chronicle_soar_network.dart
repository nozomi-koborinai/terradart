// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_soar_network`.
const Set<String> _googleChronicleSoarNetworkSensitive = <String>{};

/// Factory wrapper for `google_chronicle_soar_network`.
///
/// Manage networks in the platform using the Classless Inter-Domain Routing
/// (CIDR) format. The system identifies network subnets to help Google Security
/// Operations recognize internal assets and consider network sensitivity during
/// playbook execution.
///
/// Chronicle (Google SecOps) **SOAR network** — a CIDR subnet SecOps treats
/// as an internal asset range, so playbooks can weigh network sensitivity.
///
/// [address] is the subnet in CIDR notation (e.g. `10.0.0.0/8`) and
/// [environmentsJson] is a JSON-encoded array of the logical environment
/// names the subnet belongs to (e.g. `'["Default Environment"]'`) — the API
/// takes that list as an opaque string, so it is not a Dart `List`.
/// [priority] orders overlapping networks; lower values win.
///
/// Enable `chronicle.googleapis.com` before apply. [instance] is the
/// Chronicle instance ID in [location] (e.g. `us`); applying needs a real
/// Google SecOps instance, which no Terraform resource creates.
final class GoogleChronicleSoarNetwork extends Resource {
  static const String tfType = 'google_chronicle_soar_network';

  GoogleChronicleSoarNetwork({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> address,
    required TfArg<String> environmentsJson,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<num>? priority,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'address': address,
           'environments_json': environmentsJson,
           'location': location,
           'instance': instance,
           'priority': ?priority,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleSoarNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleSoarNetwork>`.
  RefTo<GoogleChronicleSoarNetwork> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `soar_network_id` attribute.
  TfRef<String> get soarNetworkId =>
      TfRef.attribute<String>(this, 'soar_network_id');

  /// Reference to `address` attribute.
  TfRef<String> get addressRef => TfRef.attribute<String>(this, 'address');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `environments_json` attribute.
  TfRef<String> get environmentsJsonRef =>
      TfRef.attribute<String>(this, 'environments_json');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `priority` attribute.
  TfRef<num> get priorityRef => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

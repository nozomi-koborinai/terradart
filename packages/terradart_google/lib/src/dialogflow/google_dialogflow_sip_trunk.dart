// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_sip_trunk`.
const Set<String> _googleDialogflowSipTrunkSensitive = <String>{};

/// Terraform `deletion_policy` for Dialogflow SIP trunks.
extension type const DialogflowSipTrunkDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowSipTrunkDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowSipTrunkDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowSipTrunkDeletionPolicy.arg(TfArg<String> arg) : this._(arg);

  static const delete = DialogflowSipTrunkDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = DialogflowSipTrunkDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = DialogflowSipTrunkDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<DialogflowSipTrunkDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// Factory wrapper for `google_dialogflow_sip_trunk`.
///
/// SipTrunk is the resource that represents a SIP trunk to connect to the
/// Google Telephony Platform SIP trunking service.
///
/// Dialogflow CX SIP trunk for Google Telephony Platform trunking.
///
/// Enable `dialogflow.googleapis.com` via [GoogleProjectService] before apply.
/// [expectedHostname] lists the TLS peer certificate hostnames your carrier presents.
///
/// Example:
/// ```dart
/// GoogleDialogflowSipTrunk(
///   'carrier_trunk',
///   location: TfArg.literal('global'),
///   expectedHostname: TfArg.literal(['sip.carrier.example.com']),
///   displayName: TfArg.literal('Primary carrier trunk'),
/// );
/// ```
final class GoogleDialogflowSipTrunk extends Resource {
  static const String tfType = 'google_dialogflow_sip_trunk';

  GoogleDialogflowSipTrunk(
    super.localName, {
    required TfArg<String> location,
    required TfArg<List<String>> expectedHostname,
    TfArg<String>? displayName,
    DialogflowSipTrunkDeletionPolicy? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'expected_hostname': expectedHostname,
           'display_name': ?displayName,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowSipTrunkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowSipTrunk>`.
  RefTo<GoogleDialogflowSipTrunk> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connections` attribute.
  TfRef<List<Map<String, Object?>>> get connections =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connections');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `expected_hostname` attribute.
  TfRef<List<String>> get expectedHostname =>
      TfRef.attribute<List<String>>(this, 'expected_hostname');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

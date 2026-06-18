// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_sip_trunk`.
const Set<String> _googleDialogflowSipTrunkSensitive = <String>{};

/// Terraform `deletion_policy` for Dialogflow SIP trunks.
enum DialogflowSipTrunkDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const DialogflowSipTrunkDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
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
///   localName: 'carrier_trunk',
///   location: TfArg.literal('global'),
///   expectedHostname: TfArg.literal(['sip.carrier.example.com']),
///   displayName: TfArg.literal('Primary carrier trunk'),
/// );
/// ```
final class GoogleDialogflowSipTrunk extends Resource {
  static const String tfType = 'google_dialogflow_sip_trunk';

  GoogleDialogflowSipTrunk({
    required super.localName,
    required TfArg<String> location,
    required TfArg<List<String>> expectedHostname,
    TfArg<String>? displayName,
    TfArg<DialogflowSipTrunkDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'expected_hostname': expectedHostname,
           if (displayName != null) 'display_name': displayName,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowSipTrunkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connections` attribute.
  TfRef<List<Map<String, Object?>>> get connections =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connections');
}

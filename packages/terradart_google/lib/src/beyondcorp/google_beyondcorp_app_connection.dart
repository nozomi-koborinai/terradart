// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_app_connection`.
const Set<String> _googleBeyondcorpAppConnectionSensitive = <String>{};

/// Typed helper for the `application_endpoint` block of
/// `google_beyondcorp_app_connection` (derived from provider schema).
@immutable
final class BeyondcorpAppConnectionApplicationEndpoint {
  const BeyondcorpAppConnectionApplicationEndpoint({
    required this.host,
    required this.port,
  });

  final TfArg<String> host;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'host': host.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `gateway` block of
/// `google_beyondcorp_app_connection` (derived from provider schema).
@immutable
final class BeyondcorpAppConnectionGateway {
  const BeyondcorpAppConnectionGateway({required this.appGateway, this.type});

  final TfArg<String> appGateway;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'app_gateway': appGateway.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Factory wrapper for `google_beyondcorp_app_connection`.
///
/// A BeyondCorp AppConnection resource represents a BeyondCorp protected
/// AppConnection to a remote application. It creates all the necessary GCP
/// components needed for creating a BeyondCorp protected AppConnection.
/// Multiple connectors can be authorised for a single AppConnection.
///
/// BeyondCorp **App Connection** — maps an application endpoint through
/// connectors / gateways.
///
/// **Cost / apply:** Chrome Enterprise Premium `F91A-404B-8D2E` Monthly
/// Users SKU `E2D2-474B-B4EF` **$6/user·mo**; requires never_apply
/// connector/gateway parents. Debt-only on `terradart-validate`. **Never**
/// wire into apply-smoke.
final class GoogleBeyondcorpAppConnection extends Resource {
  static const String tfType = 'google_beyondcorp_app_connection';

  GoogleBeyondcorpAppConnection({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? type,
    required BeyondcorpAppConnectionApplicationEndpoint applicationEndpoint,
    BeyondcorpAppConnectionGateway? gateway,
    TfArg<List<String>>? connectors,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (type != null) 'type': type,
           'application_endpoint': TfArg.literal(applicationEndpoint.encode()),
           if (gateway != null) 'gateway': TfArg.literal(gateway.encode()),
           if (connectors != null) 'connectors': connectors,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBeyondcorpAppConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}

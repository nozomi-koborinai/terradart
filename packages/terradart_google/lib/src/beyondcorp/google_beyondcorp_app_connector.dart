// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_app_connector`.
const Set<String> _googleBeyondcorpAppConnectorSensitive = <String>{};

/// Beyondcorp App Connector enum for `state`.
enum BeyondcorpAppConnectorState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  creating('CREATING'),
  created('CREATED'),
  updating('UPDATING'),
  deleting('DELETING'),
  down('DOWN');

  const BeyondcorpAppConnectorState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `principal_info` block of
/// `google_beyondcorp_app_connector` (derived from provider schema).
@immutable
final class BeyondcorpAppConnectorPrincipalInfo {
  const BeyondcorpAppConnectorPrincipalInfo({required this.serviceAccount});

  final BeyondcorpAppConnectorPrincipalInfoServiceAccount serviceAccount;

  Map<String, Object?> encode() => {'service_account': serviceAccount.encode()};
}

/// Typed helper for the `principal_info.service_account` block of
/// `google_beyondcorp_app_connector` (derived from provider schema).
@immutable
final class BeyondcorpAppConnectorPrincipalInfoServiceAccount {
  const BeyondcorpAppConnectorPrincipalInfoServiceAccount({
    required this.email,
  });

  final TfArg<String> email;

  Map<String, Object?> encode() => {'email': email.toTfJson()};
}

/// Factory wrapper for `google_beyondcorp_app_connector`.
///
/// A BeyondCorp AppConnector resource represents an application facing
/// component deployed proximal to and with direct access to the application
/// instances. It is used to establish connectivity between the remote
/// enterprise environment and GCP. It initiates connections to the applications
/// and can proxy the data from users over the connection.
///
/// BeyondCorp **App Connector** — connector VM identity for App Gateways.
///
/// **Cost / apply:** Chrome Enterprise Premium `F91A-404B-8D2E` Monthly
/// Users SKU `E2D2-474B-B4EF` **$6/user·mo**; connectors need CEP
/// entitlement + a never_apply [GoogleBeyondcorpAppGateway]. Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleBeyondcorpAppConnector extends Resource {
  static const String tfType = 'google_beyondcorp_app_connector';

  GoogleBeyondcorpAppConnector({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required BeyondcorpAppConnectorPrincipalInfo principalInfo,
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
           'principal_info': TfArg.literal(principalInfo.encode()),
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBeyondcorpAppConnectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}

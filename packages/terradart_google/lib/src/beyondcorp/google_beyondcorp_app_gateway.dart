// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_app_gateway`.
const Set<String> _googleBeyondcorpAppGatewaySensitive = <String>{};

/// Beyondcorp App Gateway Host enum for `host_type`.
enum BeyondcorpAppGatewayHostType implements TerraformEnum {
  hostTypeUnspecified('HOST_TYPE_UNSPECIFIED'),
  gcpRegionalMig('GCP_REGIONAL_MIG');

  const BeyondcorpAppGatewayHostType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Beyondcorp App Gateway enum for `state`.
enum BeyondcorpAppGatewayState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  creating('CREATING'),
  created('CREATED'),
  updating('UPDATING'),
  deleting('DELETING'),
  down('DOWN');

  const BeyondcorpAppGatewayState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Beyondcorp App Gateway enum for `type`.
enum BeyondcorpAppGatewayType implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  tcpProxy('TCP_PROXY');

  const BeyondcorpAppGatewayType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_beyondcorp_app_gateway`.
///
/// A BeyondCorp AppGateway resource represents a BeyondCorp protected
/// AppGateway to a remote application. It creates all the necessary GCP
/// components needed for creating a BeyondCorp protected AppGateway. Multiple
/// connectors can be authorised for a single AppGateway.
///
/// BeyondCorp **App Gateway** — regional connector gateway for
/// zero-trust application access.
///
/// **Cost / apply:** Chrome Enterprise Premium (service `F91A-404B-8D2E`)
/// Monthly Users SKU `E2D2-474B-B4EF` **$6/user·mo** (BeyondCorp Enterprise
/// Essentials deprecated `C321-0177-7DAF` **$4/user·mo**). Gateways require
/// a CEP / BeyondCorp entitlement absent on `terradart-validate`. Debt-only.
/// **Never** wire into apply-smoke.
///
/// Enable `beyondcorp.googleapis.com` via [GoogleProjectService] before
/// apply.
final class GoogleBeyondcorpAppGateway extends Resource {
  static const String tfType = 'google_beyondcorp_app_gateway';

  GoogleBeyondcorpAppGateway({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<BeyondcorpAppGatewayType>? type,
    TfArg<BeyondcorpAppGatewayHostType>? hostType,
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
           if (hostType != null) 'host_type': hostType,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBeyondcorpAppGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocated_connections` attribute.
  TfRef<List<Map<String, Object?>>> get allocatedConnections =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'allocated_connections',
      );

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}

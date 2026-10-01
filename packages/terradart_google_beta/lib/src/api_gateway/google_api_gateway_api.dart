// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_api`.
const Set<String> _googleApiGatewayApiSensitive = <String>{};

/// Factory wrapper for `google_api_gateway_api`.
///
/// A consumable API that can be used by multiple Gateways.
final class GoogleApiGatewayApi extends Resource {
  static const String tfType = 'google_api_gateway_api';

  GoogleApiGatewayApi(
    super.localName, {
    required TfArg<String> apiId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? managedService,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_id': apiId,
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'labels': ?labels,
           'managed_service': ?managedService,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayApiSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayApi>`.
  RefTo<GoogleApiGatewayApi> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `managed_service` attribute.
  TfRef<String> get managedService =>
      TfRef.attribute<String>(this, 'managed_service');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

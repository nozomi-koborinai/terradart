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

  GoogleApiGatewayApi({
    required super.localName,
    required TfArg<String> apiId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? managedService,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'api_id': apiId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (managedService != null) 'managed_service': managedService,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayApiSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApiGatewayApi>`.
  RefTo<GoogleApiGatewayApi> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}

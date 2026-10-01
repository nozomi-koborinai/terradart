// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apihub_host_project_registration`.
const Set<String> _googleApihubHostProjectRegistrationSensitive = <String>{};

/// Factory wrapper for `google_apihub_host_project_registration`.
///
/// Host project registration refers to the registration of a Google cloud
/// project with API hub as a host project. This is the project where API hub is
/// provisioned. It acts as the consumer project for the API hub instance
/// provisioned. Multiple runtime projects can be attached to the host project
/// and these attachments define the scope of API hub.
///
/// API Hub **host project registration** — registers the GCP project
/// that hosts the API Hub instance (consumer project for the catalog).
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (`list_services` API Hub → empty; Apigee `1C2D-8C78-EC58`
/// `list_skus` keyword Hub → 0). Provider MM sets `exclude_delete: true`
/// — Terraform **cannot destroy** the registration, so apply-smoke
/// would strand it forever (`never_apply`). Ships without a quickstart
/// (`tool/example_debt.yaml`).
final class GoogleApihubHostProjectRegistration extends Resource {
  static const String tfType = 'google_apihub_host_project_registration';

  GoogleApihubHostProjectRegistration(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> hostProjectRegistrationId,
    required TfArg<String> gcpProject,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'host_project_registration_id': hostProjectRegistrationId,
           'gcp_project': gcpProject,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApihubHostProjectRegistrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApihubHostProjectRegistration>`.
  RefTo<GoogleApihubHostProjectRegistration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `gcp_project` attribute.
  TfRef<String> get gcpProject => TfRef.attribute<String>(this, 'gcp_project');

  /// Reference to `host_project_registration_id` attribute.
  TfRef<String> get hostProjectRegistrationId =>
      TfRef.attribute<String>(this, 'host_project_registration_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

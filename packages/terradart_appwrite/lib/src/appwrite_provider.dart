import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Provider source identifier — `appwrite/appwrite` (the official
/// Appwrite Terraform provider).
const String kAppwriteProviderSource = 'appwrite/appwrite';

/// Exact version pin. The provider is beta-maturity (`2.0.0-beta.1`), so
/// TerraDart pins the version it was generated against instead of a
/// floating `~>` range; bumps are deliberate maintainer changes together
/// with a fixture re-extraction.
const String kAppwriteProviderVersionConstraint = '2.0.0-beta.1';

/// Concrete `StackProvider` for `appwrite/appwrite`.
///
/// **Credentials never enter synth output by design**: this class exposes
/// no `api_key` / `organization_api_key` parameters, so a synthesized
/// `main.tf.json` cannot contain them. Authenticate at apply time through
/// the provider's documented environment variables instead —
/// `APPWRITE_API_KEY` (project-scoped resources) and
/// `APPWRITE_ORGANIZATION_API_KEY` (organization-scoped resources such as
/// `AppwriteProject`). `endpoint` / `project_id` / `organization_id` also
/// have `APPWRITE_*` env fallbacks when omitted here.
///
/// All configuration fields are plain Dart types (not `TfArg`) — provider
/// blocks in Terraform JSON do not interpolate references to resources.
@immutable
final class AppwriteProvider implements StackProvider {
  /// Creates an Appwrite provider block.
  ///
  /// Do not pass API keys here — set `APPWRITE_API_KEY` /
  /// `APPWRITE_ORGANIZATION_API_KEY` at apply time so credentials never
  /// enter synth output.
  const AppwriteProvider({
    this.endpoint,
    this.projectId,
    this.organizationId,
    this.selfSigned,
    this.httpTimeoutSeconds,
  });

  /// Appwrite API endpoint (e.g. `https://cloud.appwrite.io/v1`).
  final String? endpoint;

  /// Default project ID for project-scoped resources.
  final String? projectId;

  /// Default organization ID for organization-scoped resources.
  final String? organizationId;

  /// Accept self-signed SSL certificates (self-hosted Appwrite).
  final bool? selfSigned;

  /// Per-request API timeout override in seconds (provider default 120).
  final int? httpTimeoutSeconds;

  @override
  String get providerName => 'appwrite';

  /// Provider registry source — `appwrite/appwrite`.
  @override
  String get source => kAppwriteProviderSource;

  /// Version constraint — exact `2.0.0-beta.1` pin.
  @override
  String get versionConstraint => kAppwriteProviderVersionConstraint;

  @override
  Map<String, Object?> get configArgs => {
        if (endpoint != null) 'endpoint': endpoint,
        if (projectId != null) 'project_id': projectId,
        if (organizationId != null) 'organization_id': organizationId,
        if (selfSigned != null) 'self_signed': selfSigned,
        if (httpTimeoutSeconds != null)
          'http_timeout_seconds': httpTimeoutSeconds,
      };
}

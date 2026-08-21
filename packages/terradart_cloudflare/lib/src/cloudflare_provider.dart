import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Provider source identifier — `cloudflare/cloudflare` (the official
/// Cloudflare Terraform provider).
const String kCloudflareProviderSource = 'cloudflare/cloudflare';

/// Exact version pin. Cloudflare has no automated bump lane in this
/// workspace (unlike GA google), so TerraDart pins the version its
/// wrappers were generated against; bumps are deliberate maintainer
/// changes together with a fixture re-extraction.
const String kCloudflareProviderVersionConstraint = '5.23.0';

/// Concrete `StackProvider` for `cloudflare/cloudflare`.
///
/// **Secrets never enter synth output by design**: every provider
/// attribute the schema marks `sensitive` (`api_token`, `api_key`,
/// `api_user_service_key`) is structurally excluded from this class, so a
/// synthesized `main.tf.json` cannot contain them. Authenticate at apply
/// time through the provider's documented environment variables instead —
/// `CLOUDFLARE_API_TOKEN` (scoped API token, the recommended route), or
/// `CLOUDFLARE_EMAIL` + `CLOUDFLARE_API_KEY` (legacy global key), or
/// `CLOUDFLARE_API_USER_SERVICE_KEY`. The non-sensitive attributes are
/// all exposed here.
///
/// All configuration fields are plain Dart types (not `TfArg`) — provider
/// blocks in Terraform JSON do not interpolate references to resources.
@immutable
final class CloudflareProvider implements StackProvider {
  const CloudflareProvider({
    this.baseUrl,
    this.email,
    this.userAgentOperatorSuffix,
  });

  /// API base URL override (e.g. a gateway or mock in front of
  /// `https://api.cloudflare.com/client/v4`).
  final String? baseUrl;

  /// Account email — only meaningful alongside the legacy global-key
  /// authentication supplied via `CLOUDFLARE_API_KEY`. Not a secret
  /// itself; may also be supplied via `CLOUDFLARE_EMAIL`.
  final String? email;

  /// Suffix appended to the provider's User-Agent (operator
  /// identification on managed platforms).
  final String? userAgentOperatorSuffix;

  @override
  String get providerName => 'cloudflare';

  /// Provider registry source — `cloudflare/cloudflare`.
  @override
  String get source => kCloudflareProviderSource;

  /// Version constraint — exact `5.23.0` pin.
  @override
  String get versionConstraint => kCloudflareProviderVersionConstraint;

  @override
  Map<String, Object?> get configArgs => {
        if (baseUrl != null) 'base_url': baseUrl,
        if (email != null) 'email': email,
        if (userAgentOperatorSuffix != null)
          'user_agent_operator_suffix': userAgentOperatorSuffix,
      };
}

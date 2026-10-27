// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_workspace_api_version_set`.
const Set<String> _azurermApiManagementWorkspaceApiVersionSetSensitive =
    <String>{};

/// Api Management Workspace Api Version Set Versioning enum for `versioning_scheme`.
extension type const ApiManagementWorkspaceApiVersionSetVersioningScheme._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementWorkspaceApiVersionSetVersioningScheme.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementWorkspaceApiVersionSetVersioningScheme.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ApiManagementWorkspaceApiVersionSetVersioningScheme.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const header = ApiManagementWorkspaceApiVersionSetVersioningScheme._(
    TfArgLiteral('Header'),
  );
  static const query = ApiManagementWorkspaceApiVersionSetVersioningScheme._(
    TfArgLiteral('Query'),
  );
  static const segment = ApiManagementWorkspaceApiVersionSetVersioningScheme._(
    TfArgLiteral('Segment'),
  );

  static const List<ApiManagementWorkspaceApiVersionSetVersioningScheme>
  values = [header, query, segment];
}

/// At most one of `version_header_name`, `version_query_name` on `azurerm_api_management_workspace_api_version_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.versionHeaderName(...)`.
sealed class ApiManagementWorkspaceApiVersionSetVersion {
  const ApiManagementWorkspaceApiVersionSetVersion();

  /// Sets `version_header_name`.
  const factory ApiManagementWorkspaceApiVersionSetVersion.versionHeaderName(
    TfArg<String> versionHeaderName,
  ) = ApiManagementWorkspaceApiVersionSetVersionHeaderName;

  /// Sets `version_query_name`.
  const factory ApiManagementWorkspaceApiVersionSetVersion.versionQueryName(
    TfArg<String> versionQueryName,
  ) = ApiManagementWorkspaceApiVersionSetVersionQueryName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ApiManagementWorkspaceApiVersionSetVersion.versionHeaderName] choice: sets `version_header_name`.
final class ApiManagementWorkspaceApiVersionSetVersionHeaderName
    extends ApiManagementWorkspaceApiVersionSetVersion {
  const ApiManagementWorkspaceApiVersionSetVersionHeaderName(
    this.versionHeaderName,
  );

  final TfArg<String> versionHeaderName;

  @internal
  @override
  String get blockKey => 'version_header_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'version_header_name': versionHeaderName.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'version_header_name': versionHeaderName,
  };
}

/// The [ApiManagementWorkspaceApiVersionSetVersion.versionQueryName] choice: sets `version_query_name`.
final class ApiManagementWorkspaceApiVersionSetVersionQueryName
    extends ApiManagementWorkspaceApiVersionSetVersion {
  const ApiManagementWorkspaceApiVersionSetVersionQueryName(
    this.versionQueryName,
  );

  final TfArg<String> versionQueryName;

  @internal
  @override
  String get blockKey => 'version_query_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'version_query_name': versionQueryName.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'version_query_name': versionQueryName,
  };
}

/// Factory wrapper for `azurerm_api_management_workspace_api_version_set`.
final class AzurermApiManagementWorkspaceApiVersionSet extends Resource {
  static const String tfType =
      'azurerm_api_management_workspace_api_version_set';

  AzurermApiManagementWorkspaceApiVersionSet(
    super.localName, {
    required TfArg<String> apiManagementWorkspaceId,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> name,
    ApiManagementWorkspaceApiVersionSetVersion? version,
    required ApiManagementWorkspaceApiVersionSetVersioningScheme
    versioningScheme,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_workspace_id': apiManagementWorkspaceId,
           'description': ?description,
           'display_name': displayName,
           'name': name,
           ...?version?.argMap,
           'versioning_scheme': versioningScheme,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementWorkspaceApiVersionSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementWorkspaceApiVersionSet>`.
  RefTo<AzurermApiManagementWorkspaceApiVersionSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_workspace_id` attribute.
  TfRef<String> get apiManagementWorkspaceId =>
      TfRef.attribute<String>(this, 'api_management_workspace_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `version_header_name` attribute.
  TfRef<String> get versionHeaderName =>
      TfRef.attribute<String>(this, 'version_header_name');

  /// Reference to `version_query_name` attribute.
  TfRef<String> get versionQueryName =>
      TfRef.attribute<String>(this, 'version_query_name');

  /// Reference to `versioning_scheme` attribute.
  TfRef<String> get versioningScheme =>
      TfRef.attribute<String>(this, 'versioning_scheme');
}

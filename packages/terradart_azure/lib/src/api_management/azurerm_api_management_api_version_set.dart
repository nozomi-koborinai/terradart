// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_api_version_set`.
const Set<String> _azurermApiManagementApiVersionSetSensitive = <String>{};

/// Api Management Api Version Set Versioning enum for `versioning_scheme`.
extension type const ApiManagementApiVersionSetVersioningScheme._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementApiVersionSetVersioningScheme.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementApiVersionSetVersioningScheme.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementApiVersionSetVersioningScheme.arg(TfArg<String> arg)
    : this._(arg);

  static const header = ApiManagementApiVersionSetVersioningScheme._(
    TfArgLiteral('Header'),
  );
  static const query = ApiManagementApiVersionSetVersioningScheme._(
    TfArgLiteral('Query'),
  );
  static const segment = ApiManagementApiVersionSetVersioningScheme._(
    TfArgLiteral('Segment'),
  );

  static const List<ApiManagementApiVersionSetVersioningScheme> values = [
    header,
    query,
    segment,
  ];
}

/// At most one of `version_header_name`, `version_query_name` on `azurerm_api_management_api_version_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.versionHeaderName(...)`.
sealed class ApiManagementApiVersionSetVersion {
  const ApiManagementApiVersionSetVersion();

  /// Sets `version_header_name`.
  const factory ApiManagementApiVersionSetVersion.versionHeaderName(
    TfArg<String> versionHeaderName,
  ) = ApiManagementApiVersionSetVersionHeaderName;

  /// Sets `version_query_name`.
  const factory ApiManagementApiVersionSetVersion.versionQueryName(
    TfArg<String> versionQueryName,
  ) = ApiManagementApiVersionSetVersionQueryName;

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

/// The [ApiManagementApiVersionSetVersion.versionHeaderName] choice: sets `version_header_name`.
final class ApiManagementApiVersionSetVersionHeaderName
    extends ApiManagementApiVersionSetVersion {
  const ApiManagementApiVersionSetVersionHeaderName(this.versionHeaderName);

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

/// The [ApiManagementApiVersionSetVersion.versionQueryName] choice: sets `version_query_name`.
final class ApiManagementApiVersionSetVersionQueryName
    extends ApiManagementApiVersionSetVersion {
  const ApiManagementApiVersionSetVersionQueryName(this.versionQueryName);

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

/// Factory wrapper for `azurerm_api_management_api_version_set`.
final class AzurermApiManagementApiVersionSet extends Resource {
  static const String tfType = 'azurerm_api_management_api_version_set';

  AzurermApiManagementApiVersionSet(
    super.localName, {
    required TfArg<String> apiManagementName,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    ApiManagementApiVersionSetVersion? version,
    required ApiManagementApiVersionSetVersioningScheme versioningScheme,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'description': ?description,
           'display_name': displayName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           ...?version?.argMap,
           'versioning_scheme': versioningScheme,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementApiVersionSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementApiVersionSet>`.
  RefTo<AzurermApiManagementApiVersionSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

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

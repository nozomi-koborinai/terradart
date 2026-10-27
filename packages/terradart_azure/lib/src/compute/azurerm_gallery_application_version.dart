// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_gallery_application_version`.
const Set<String> _azurermGalleryApplicationVersionSensitive = <String>{};

/// Typed helper for the `manage_action` block of
/// `azurerm_gallery_application_version` (derived from provider schema).
@immutable
final class GalleryApplicationVersionManageAction {
  const GalleryApplicationVersionManageAction({
    required this.install,
    required this.remove,
    this.update,
  });

  final TfArg<String> install;

  final TfArg<String> remove;

  final TfArg<String>? update;

  @internal
  Map<String, Object?> encode() => {
    'install': install.toTfJson(),
    'remove': remove.toTfJson(),
    'update': ?update?.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `azurerm_gallery_application_version` (derived from provider schema).
@immutable
final class GalleryApplicationVersionSource {
  const GalleryApplicationVersionSource({
    this.defaultConfigurationLink,
    required this.mediaLink,
  });

  final TfArg<String>? defaultConfigurationLink;

  final TfArg<String> mediaLink;

  @internal
  Map<String, Object?> encode() => {
    'default_configuration_link': ?defaultConfigurationLink?.toTfJson(),
    'media_link': mediaLink.toTfJson(),
  };
}

/// Typed helper for the `target_region` block of
/// `azurerm_gallery_application_version` (derived from provider schema).
@immutable
final class GalleryApplicationVersionTargetRegion {
  const GalleryApplicationVersionTargetRegion({
    this.excludeFromLatest,
    required this.name,
    required this.regionalReplicaCount,
    this.storageAccountType,
  });

  final TfArg<bool>? excludeFromLatest;

  final TfArg<String> name;

  final TfArg<num> regionalReplicaCount;

  final GalleryApplicationVersionStorageAccountType? storageAccountType;

  @internal
  Map<String, Object?> encode() => {
    'exclude_from_latest': ?excludeFromLatest?.toTfJson(),
    'name': name.toTfJson(),
    'regional_replica_count': regionalReplicaCount.toTfJson(),
    'storage_account_type': ?storageAccountType?.toTfJson(),
  };
}

/// `storage_account_type` — derived from the provider schema description.
extension type const GalleryApplicationVersionStorageAccountType._(
  TfArg<String> _
) implements TfArg<String> {
  GalleryApplicationVersionStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  GalleryApplicationVersionStorageAccountType.expression(String template)
    : this._(TfArg.expression(template));
  const GalleryApplicationVersionStorageAccountType.arg(TfArg<String> arg)
    : this._(arg);

  static const premiumLrs = GalleryApplicationVersionStorageAccountType._(
    TfArgLiteral('Premium_LRS'),
  );
  static const standardLrs = GalleryApplicationVersionStorageAccountType._(
    TfArgLiteral('Standard_LRS'),
  );
  static const standardZrs = GalleryApplicationVersionStorageAccountType._(
    TfArgLiteral('Standard_ZRS'),
  );

  static const List<GalleryApplicationVersionStorageAccountType> values = [
    premiumLrs,
    standardLrs,
    standardZrs,
  ];
}

/// Factory wrapper for `azurerm_gallery_application_version`.
final class AzurermGalleryApplicationVersion extends Resource {
  static const String tfType = 'azurerm_gallery_application_version';

  AzurermGalleryApplicationVersion(
    super.localName, {
    TfArg<String>? configFile,
    TfArg<bool>? enableHealthCheck,
    TfArg<String>? endOfLifeDate,
    TfArg<bool>? excludeFromLatest,
    required TfArg<String> galleryApplicationId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? packageFile,
    TfArg<Map<String, String>>? tags,
    required GalleryApplicationVersionManageAction manageAction,
    required GalleryApplicationVersionSource source,
    required List<GalleryApplicationVersionTargetRegion> targetRegion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config_file': ?configFile,
           'enable_health_check': ?enableHealthCheck,
           'end_of_life_date': ?endOfLifeDate,
           'exclude_from_latest': ?excludeFromLatest,
           'gallery_application_id': galleryApplicationId,
           'location': location,
           'name': name,
           'package_file': ?packageFile,
           'tags': ?tags,
           'manage_action': TfArg.literal(manageAction.encode()),
           'source': TfArg.literal(source.encode()),
           'target_region': TfArg.literal([
             for (final e in targetRegion) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermGalleryApplicationVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermGalleryApplicationVersion>`.
  RefTo<AzurermGalleryApplicationVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `config_file` attribute.
  TfRef<String> get configFile => TfRef.attribute<String>(this, 'config_file');

  /// Reference to `enable_health_check` attribute.
  TfRef<bool> get enableHealthCheck =>
      TfRef.attribute<bool>(this, 'enable_health_check');

  /// Reference to `end_of_life_date` attribute.
  TfRef<String> get endOfLifeDate =>
      TfRef.attribute<String>(this, 'end_of_life_date');

  /// Reference to `exclude_from_latest` attribute.
  TfRef<bool> get excludeFromLatest =>
      TfRef.attribute<bool>(this, 'exclude_from_latest');

  /// Reference to `gallery_application_id` attribute.
  TfRef<String> get galleryApplicationId =>
      TfRef.attribute<String>(this, 'gallery_application_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `package_file` attribute.
  TfRef<String> get packageFile =>
      TfRef.attribute<String>(this, 'package_file');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

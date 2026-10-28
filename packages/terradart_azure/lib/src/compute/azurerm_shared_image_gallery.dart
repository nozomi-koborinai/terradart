// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_shared_image_gallery`.
const Set<String> _azurermSharedImageGallerySensitive = <String>{};

/// Typed helper for the `sharing` block of
/// `azurerm_shared_image_gallery` (derived from provider schema).
@immutable
final class SharedImageGallerySharing {
  const SharedImageGallerySharing({
    required this.permission,
    this.communityGallery,
  });

  final SharedImageGalleryPermission permission;

  final SharedImageGalleryCommunityGallery? communityGallery;

  @internal
  Map<String, Object?> encode() => {
    'permission': permission.toTfJson(),
    'community_gallery': ?communityGallery?.encode(),
  };
}

/// `permission` — derived from the provider schema description.
extension type const SharedImageGalleryPermission._(TfArg<String> _)
    implements TfArg<String> {
  SharedImageGalleryPermission.variable(String name)
    : this._(TfArg.variable(name));
  SharedImageGalleryPermission.expression(String template)
    : this._(TfArg.expression(template));
  const SharedImageGalleryPermission.arg(TfArg<String> arg) : this._(arg);

  static const community = SharedImageGalleryPermission._(
    TfArgLiteral('Community'),
  );
  static const groups = SharedImageGalleryPermission._(TfArgLiteral('Groups'));
  static const private = SharedImageGalleryPermission._(
    TfArgLiteral('Private'),
  );

  static const List<SharedImageGalleryPermission> values = [
    community,
    groups,
    private,
  ];
}

/// Typed helper for the `sharing.community_gallery` block of
/// `azurerm_shared_image_gallery` (derived from provider schema).
@immutable
final class SharedImageGalleryCommunityGallery {
  const SharedImageGalleryCommunityGallery({
    required this.eula,
    required this.prefix,
    required this.publisherEmail,
    required this.publisherUri,
  });

  final TfArg<String> eula;

  final TfArg<String> prefix;

  final TfArg<String> publisherEmail;

  final TfArg<String> publisherUri;

  @internal
  Map<String, Object?> encode() => {
    'eula': eula.toTfJson(),
    'prefix': prefix.toTfJson(),
    'publisher_email': publisherEmail.toTfJson(),
    'publisher_uri': publisherUri.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_shared_image_gallery`.
final class AzurermSharedImageGallery extends Resource {
  static const String tfType = 'azurerm_shared_image_gallery';

  AzurermSharedImageGallery(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    SharedImageGallerySharing? sharing,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (sharing != null) 'sharing': TfArg.literal(sharing.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSharedImageGallerySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSharedImageGallery>`.
  RefTo<AzurermSharedImageGallery> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `unique_name` attribute.
  TfRef<String> get uniqueName => TfRef.attribute<String>(this, 'unique_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

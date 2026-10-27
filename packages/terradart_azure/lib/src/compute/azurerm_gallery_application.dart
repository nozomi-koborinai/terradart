// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_gallery_application`.
const Set<String> _azurermGalleryApplicationSensitive = <String>{};

/// Gallery Application Supported Os enum for `supported_os_type`.
extension type const GalleryApplicationSupportedOsType._(TfArg<String> _)
    implements TfArg<String> {
  GalleryApplicationSupportedOsType.variable(String name)
    : this._(TfArg.variable(name));
  GalleryApplicationSupportedOsType.expression(String template)
    : this._(TfArg.expression(template));
  const GalleryApplicationSupportedOsType.arg(TfArg<String> arg) : this._(arg);

  static const linux = GalleryApplicationSupportedOsType._(
    TfArgLiteral('Linux'),
  );
  static const windows = GalleryApplicationSupportedOsType._(
    TfArgLiteral('Windows'),
  );

  static const List<GalleryApplicationSupportedOsType> values = [
    linux,
    windows,
  ];
}

/// Factory wrapper for `azurerm_gallery_application`.
final class AzurermGalleryApplication extends Resource {
  static const String tfType = 'azurerm_gallery_application';

  AzurermGalleryApplication(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? endOfLifeDate,
    TfArg<String>? eula,
    required TfArg<String> galleryId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? privacyStatementUri,
    TfArg<String>? releaseNoteUri,
    required GalleryApplicationSupportedOsType supportedOsType,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'end_of_life_date': ?endOfLifeDate,
           'eula': ?eula,
           'gallery_id': galleryId,
           'location': location,
           'name': name,
           'privacy_statement_uri': ?privacyStatementUri,
           'release_note_uri': ?releaseNoteUri,
           'supported_os_type': supportedOsType,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermGalleryApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermGalleryApplication>`.
  RefTo<AzurermGalleryApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `end_of_life_date` attribute.
  TfRef<String> get endOfLifeDate =>
      TfRef.attribute<String>(this, 'end_of_life_date');

  /// Reference to `eula` attribute.
  TfRef<String> get eula => TfRef.attribute<String>(this, 'eula');

  /// Reference to `gallery_id` attribute.
  TfRef<String> get galleryId => TfRef.attribute<String>(this, 'gallery_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `privacy_statement_uri` attribute.
  TfRef<String> get privacyStatementUri =>
      TfRef.attribute<String>(this, 'privacy_statement_uri');

  /// Reference to `release_note_uri` attribute.
  TfRef<String> get releaseNoteUri =>
      TfRef.attribute<String>(this, 'release_note_uri');

  /// Reference to `supported_os_type` attribute.
  TfRef<String> get supportedOsType =>
      TfRef.attribute<String>(this, 'supported_os_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

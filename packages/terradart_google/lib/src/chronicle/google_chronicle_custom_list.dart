// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_custom_list`.
const Set<String> _googleChronicleCustomListSensitive = <String>{};

/// Terraform `deletion_policy` for Chronicle custom lists.
enum ChronicleCustomListDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const ChronicleCustomListDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_chronicle_custom_list`.
///
/// The custom list is a list of objects, that can be saved as a shared
/// resource, and can be used by playbooks.
///
/// Chronicle (Google SecOps) custom list shared across playbooks.
///
/// Enable `chronicle.googleapis.com` via [GoogleProjectService] before apply.
/// [instance] is the Chronicle instance ID in [location] (e.g. `us`).
/// [environments] is a JSON-encoded list of environment names.
///
/// Example:
/// ```dart
/// GoogleChronicleCustomList(
///   localName: 'approved_files',
///   location: TfArg.literal('us'),
///   instance: TfArg.literal('00000000-0000-0000-0000-000000000000'),
///   entityIdentifier: TfArg.literal('filename.bin'),
///   category: TfArg.literal('Approved Files'),
///   environments: TfArg.literal('["Default Environment"]'),
/// );
/// ```
final class GoogleChronicleCustomList extends Resource {
  static const String tfType = 'google_chronicle_custom_list';

  GoogleChronicleCustomList({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> instance,
    required TfArg<String> entityIdentifier,
    required TfArg<String> category,
    required TfArg<String> environments,
    TfArg<ChronicleCustomListDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance': instance,
           'entity_identifier': entityIdentifier,
           'category': category,
           'environments': environments,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleCustomListSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleCustomList>`.
  RefTo<GoogleChronicleCustomList> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_list_id` attribute.
  TfRef<String> get customListId =>
      TfRef.attribute<String>(this, 'custom_list_id');

  /// Reference to `category` attribute.
  TfRef<String> get categoryRef => TfRef.attribute<String>(this, 'category');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `entity_identifier` attribute.
  TfRef<String> get entityIdentifierRef =>
      TfRef.attribute<String>(this, 'entity_identifier');

  /// Reference to `environments` attribute.
  TfRef<String> get environmentsRef =>
      TfRef.attribute<String>(this, 'environments');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}

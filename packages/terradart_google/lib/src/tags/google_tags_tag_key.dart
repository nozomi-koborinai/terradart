// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_key`.
const Set<String> _googleTagsTagKeySensitive = <String>{};

/// Tags Tag Key enum for `purpose`.
extension type const TagsTagKeyPurpose._(TfArg<String> _)
    implements TfArg<String> {
  TagsTagKeyPurpose.variable(String name) : this._(TfArg.variable(name));
  TagsTagKeyPurpose.expression(String template)
    : this._(TfArg.expression(template));
  const TagsTagKeyPurpose.arg(TfArg<String> arg) : this._(arg);

  static const gceFirewall = TagsTagKeyPurpose._(TfArgLiteral('GCE_FIREWALL'));
  static const dataGovernance = TagsTagKeyPurpose._(
    TfArgLiteral('DATA_GOVERNANCE'),
  );

  static const List<TagsTagKeyPurpose> values = [gceFirewall, dataGovernance];
}

/// Factory wrapper for `google_tags_tag_key`.
///
/// A TagKey, used to group a set of TagValues.
final class GoogleTagsTagKey extends Resource {
  static const String tfType = 'google_tags_tag_key';

  GoogleTagsTagKey(
    super.localName, {
    required TfArg<String> shortName,
    required TfArg<String> parent,
    TfArg<String>? description,
    TagsTagKeyPurpose? purpose,
    TfArg<Map<String, String>>? purposeData,
    TfArg<String>? allowedValuesRegex,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'short_name': shortName,
           'parent': parent,
           'description': ?description,
           'purpose': ?purpose,
           'purpose_data': ?purposeData,
           'allowed_values_regex': ?allowedValuesRegex,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTagsTagKey>`.
  RefTo<GoogleTagsTagKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `namespaced_name` attribute.
  TfRef<String> get namespacedName =>
      TfRef.attribute<String>(this, 'namespaced_name');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `allowed_values_regex` attribute.
  TfRef<String> get allowedValuesRegex =>
      TfRef.attribute<String>(this, 'allowed_values_regex');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `purpose` attribute.
  TfRef<String> get purpose => TfRef.attribute<String>(this, 'purpose');

  /// Reference to `purpose_data` attribute.
  TfRef<Map<String, String>> get purposeData =>
      TfRef.attribute<Map<String, String>>(this, 'purpose_data');

  /// Reference to `short_name` attribute.
  TfRef<String> get shortName => TfRef.attribute<String>(this, 'short_name');
}

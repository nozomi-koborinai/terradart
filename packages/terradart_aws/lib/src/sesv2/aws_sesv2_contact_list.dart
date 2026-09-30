// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_contact_list`.
const Set<String> _awsSesv2ContactListSensitive = <String>{};

/// Typed helper for the `topic` block of
/// `aws_sesv2_contact_list` (derived from provider schema).
@immutable
final class Sesv2ContactListTopic {
  const Sesv2ContactListTopic({
    required this.defaultSubscriptionStatus,
    this.description,
    required this.displayName,
    required this.topicName,
  });

  final TfArg<Sesv2ContactListDefaultSubscriptionStatus>
  defaultSubscriptionStatus;

  final TfArg<String>? description;

  final TfArg<String> displayName;

  final TfArg<String> topicName;

  Map<String, Object?> encode() => {
    'default_subscription_status': defaultSubscriptionStatus.toTfJson(),
    'description': ?description?.toTfJson(),
    'display_name': displayName.toTfJson(),
    'topic_name': topicName.toTfJson(),
  };
}

/// `default_subscription_status` — derived from the provider schema description.
enum Sesv2ContactListDefaultSubscriptionStatus implements TerraformEnum {
  optIn('OPT_IN'),
  optOut('OPT_OUT');

  const Sesv2ContactListDefaultSubscriptionStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sesv2_contact_list`.
final class AwsSesv2ContactList extends Resource {
  static const String tfType = 'aws_sesv2_contact_list';

  AwsSesv2ContactList({
    required super.localName,
    required TfArg<String> contactListName,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<Sesv2ContactListTopic>? topic,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'contact_list_name': contactListName,
           'description': ?description,
           'region': ?region,
           'tags': ?tags,
           if (topic != null)
             'topic': TfArg.literal([for (final e in topic) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2ContactListSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2ContactList>`.
  RefTo<AwsSesv2ContactList> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `last_updated_timestamp` attribute.
  TfRef<String> get lastUpdatedTimestamp =>
      TfRef.attribute<String>(this, 'last_updated_timestamp');

  /// Reference to `contact_list_name` attribute.
  TfRef<String> get contactListNameRef =>
      TfRef.attribute<String>(this, 'contact_list_name');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}

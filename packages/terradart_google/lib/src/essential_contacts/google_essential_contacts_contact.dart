// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_essential_contacts_contact`.
const Set<String> _googleEssentialContactsContactSensitive = <String>{};

/// Factory wrapper for `google_essential_contacts_contact`.
///
/// A contact that will receive notifications from Google Cloud.
final class GoogleEssentialContactsContact extends Resource {
  static const String tfType = 'google_essential_contacts_contact';

  GoogleEssentialContactsContact(
    super.localName, {
    required TfArg<String> parent,
    required TfArg<String> email,
    required TfArg<String> languageTag,
    required TfArg<List<String>> notificationCategorySubscriptions,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'email': email,
           'language_tag': languageTag,
           'notification_category_subscriptions':
               notificationCategorySubscriptions,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEssentialContactsContactSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEssentialContactsContact>`.
  RefTo<GoogleEssentialContactsContact> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `language_tag` attribute.
  TfRef<String> get languageTag =>
      TfRef.attribute<String>(this, 'language_tag');

  /// Reference to `notification_category_subscriptions` attribute.
  TfRef<List<String>> get notificationCategorySubscriptions =>
      TfRef.attribute<List<String>>(
        this,
        'notification_category_subscriptions',
      );

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}

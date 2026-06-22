// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_essential_contacts_contact`.
const Set<String> _googleEssentialContactsContactSensitive = <String>{};

/// Factory wrapper for `google_essential_contacts_contact`.
final class GoogleEssentialContactsContact extends Resource {
  static const String tfType = 'google_essential_contacts_contact';

  GoogleEssentialContactsContact({
    required super.localName,
    required TfArg<String> parent,
    required TfArg<String> email,
    required TfArg<String> languageTag,
    required TfArg<List<String>> notificationCategorySubscriptions,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'email': email,
           'language_tag': languageTag,
           'notification_category_subscriptions':
               notificationCategorySubscriptions,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEssentialContactsContactSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

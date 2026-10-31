// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_essential_contacts_contact`.
const Set<String> _googleEssentialContactsContactSensitive = <String>{};

/// Essential Contacts Contact Notification Category enum for `notification_category_subscriptions`.
extension type const EssentialContactsContactNotificationCategorySubscriptions._(
  TfArg<String> _
) implements TfArg<String> {
  EssentialContactsContactNotificationCategorySubscriptions.variable(
    String name,
  ) : this._(TfArg.variable(name));
  EssentialContactsContactNotificationCategorySubscriptions.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const EssentialContactsContactNotificationCategorySubscriptions.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const all =
      EssentialContactsContactNotificationCategorySubscriptions._(
        TfArgLiteral('ALL'),
      );
  static const suspension =
      EssentialContactsContactNotificationCategorySubscriptions._(
        TfArgLiteral('SUSPENSION'),
      );
  static const security =
      EssentialContactsContactNotificationCategorySubscriptions._(
        TfArgLiteral('SECURITY'),
      );
  static const technical =
      EssentialContactsContactNotificationCategorySubscriptions._(
        TfArgLiteral('TECHNICAL'),
      );
  static const billing =
      EssentialContactsContactNotificationCategorySubscriptions._(
        TfArgLiteral('BILLING'),
      );
  static const legal =
      EssentialContactsContactNotificationCategorySubscriptions._(
        TfArgLiteral('LEGAL'),
      );
  static const productUpdates =
      EssentialContactsContactNotificationCategorySubscriptions._(
        TfArgLiteral('PRODUCT_UPDATES'),
      );
  static const technicalIncidents =
      EssentialContactsContactNotificationCategorySubscriptions._(
        TfArgLiteral('TECHNICAL_INCIDENTS'),
      );

  static const List<EssentialContactsContactNotificationCategorySubscriptions>
  values = [
    all,
    suspension,
    security,
    technical,
    billing,
    legal,
    productUpdates,
    technicalIncidents,
  ];
}

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
    required EnumList<EssentialContactsContactNotificationCategorySubscriptions>
    notificationCategorySubscriptions,
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

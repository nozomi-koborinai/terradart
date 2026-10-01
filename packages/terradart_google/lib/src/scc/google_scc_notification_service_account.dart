// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_scc_notification_service_account`.
const Set<String> _googleSccNotificationServiceAccountSensitive = <String>{};

/// Factory wrapper for `google_scc_notification_service_account`.
///
/// Reads the Security Command Center notification service agent of an
/// organization or project. Grant it access with [member] (the
/// `serviceAccount:<email>` form), e.g. publish rights on the Pub/Sub
/// topic a notification config targets.
final class GoogleSccNotificationServiceAccount extends Resource {
  static const String tfType = 'google_scc_notification_service_account';

  GoogleSccNotificationServiceAccount(
    super.localName, {
    TfArg<String>? organization,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'organization': ?organization, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccNotificationServiceAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccNotificationServiceAccount>`.
  RefTo<GoogleSccNotificationServiceAccount> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// This identity as an IAM principal, for `member` / `members`.
  IamPrincipal get principal =>
      IamPrincipal.arg(TfRef.attribute<String>(this, 'member'));
}

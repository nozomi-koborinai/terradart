// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_app_check_service_config`.
const Set<String> _googleFirebaseAppCheckServiceConfigSensitive = <String>{};

// ===========================================================================
// Enums
// ===========================================================================

/// `enforcement_mode` -- App Check enforcement level for a Firebase
/// service. Shared in shape with the enum used by
/// [GoogleFirebaseAppCheckResourcePolicy] (which can override this
/// service-wide value for one specific target resource).
///
/// Leaving the parent's `enforcementMode` parameter null is equivalent to
/// `OFF` in the REST API — App Check neither blocks requests nor collects
/// metrics, and deleting the Terraform resource returns the service to
/// the same `OFF` state. Only the two non-`OFF` values are surfaced as
/// enum members.
enum AppCheckEnforcementMode {
  /// App Check is NOT enforced; metrics ARE collected. Use this to
  /// observe how clients would fare under enforcement before flipping the
  /// switch.
  unenforced('UNENFORCED'),

  /// App Check IS enforced; requests without a valid App Check token are
  /// rejected (with service-specific exceptions, e.g. privileged service
  /// account credentials).
  enforced('ENFORCED');

  const AppCheckEnforcementMode(this.terraformValue);
  final String terraformValue;
}

/// Factory wrapper for `google_firebase_app_check_service_config`
/// (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_check_service_config.`).
/// - `service_id`: the Firebase service to configure enforcement for.
///   Currently supported values:
///     * `firebasestorage.googleapis.com` (Cloud Storage for Firebase)
///     * `firebasedatabase.googleapis.com` (Firebase Realtime Database)
///     * `firestore.googleapis.com` (Cloud Firestore)
///     * `identitytoolkit.googleapis.com` (Authentication)
///   The provider does not enumerate this set in the v7 schema, so the
///   parameter stays a plain `TfArg<String>` rather than a typed enum;
///   apply your own validation in calling code.
///
/// Optional:
/// - [enforcementMode]: [AppCheckEnforcementMode.unenforced] collects
///   metrics without blocking requests; [AppCheckEnforcementMode.enforced]
///   blocks unverified requests. Leaving it null is equivalent to `OFF`
///   in the REST API — App Check is not enforced AND metrics are not
///   collected. Deleting the resource also returns the service to `OFF`.
///
/// Example (enforce App Check on Cloud Firestore):
/// ```dart
/// final firestoreEnforcement = GoogleFirebaseAppCheckServiceConfig(
///   localName: 'firestore_enforced',
///   serviceId: TfArg.literal('firestore.googleapis.com'),
///   enforcementMode: TfArg.literal(AppCheckEnforcementMode.enforced),
/// );
/// ```
///
/// Configures **service-wide** App Check enforcement for a Firebase
/// service in the current project. For per-resource overrides (e.g. one
/// specific iOS OAuth client), use
/// [GoogleFirebaseAppCheckResourcePolicy] instead — its enforcement_mode
/// overrides the service-level setting carried by this resource.
///
/// **Caution**: enabling [AppCheckEnforcementMode.enforced] on a service
/// will reject requests from clients running app versions that have not
/// yet been updated to integrate App Check. Run with
/// [AppCheckEnforcementMode.unenforced] first to collect metrics before
/// flipping the switch.
///
/// No nested blocks aside from the meta-arg `timeouts`.
final class GoogleFirebaseAppCheckServiceConfig extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firebase_app_check_service_config';

  GoogleFirebaseAppCheckServiceConfig({
    required super.localName,
    required TfArg<String> serviceId,
    TfArg<AppCheckEnforcementMode>? enforcementMode,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'service_id': serviceId,
            if (enforcementMode != null) 'enforcement_mode': enforcementMode,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleFirebaseAppCheckServiceConfigSensitive;

  /// Reference to `name` attribute (the fully-qualified resource name of
  /// the service enforcement configuration, in the shape
  /// `projects/{project}/services/{service_id}`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `nameRef` for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

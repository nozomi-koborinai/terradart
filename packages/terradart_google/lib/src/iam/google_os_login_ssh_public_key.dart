// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_os_login_ssh_public_key`.
const Set<String> _googleOsLoginSshPublicKeySensitive = <String>{};

/// Factory wrapper for `google_os_login_ssh_public_key`.
///
/// The SSH public key information associated with a Google account.
///
/// OS Login **SSH public key** — imports an SSH public key onto a
/// Google user or service-account identity. Creating the key does
/// **not** provision a VM or enable OS Login on instances.
///
/// Prefer a thin smoke stack: [user] is an in-stack
/// [GoogleServiceAccount] `.email` (not a human Google account),
/// [key] is a dummy `ssh-ed25519` public key (no private key in
/// the repo), and [deletionPolicy] `DELETE`. Do not pair this
/// factory with [GoogleComputeInstance].
///
/// Enable `oslogin.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleOsLoginSshPublicKey(
///   localName: 'dummy',
///   user: TfArg.ref(sa.email),
///   key: TfArg.literal(
///     'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMlTZg5RNgdRr0tVBEkKHZOi3VCrR2eoC7e5stONs4Uw terradart-dummy',
///   ),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleOsLoginSshPublicKey extends Resource {
  static const String tfType = 'google_os_login_ssh_public_key';

  GoogleOsLoginSshPublicKey({
    required super.localName,
    required TfArg<String> user,
    required TfArg<String> key,
    TfArg<String>? expirationTimeUsec,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'user': user,
           'key': key,
           if (expirationTimeUsec != null)
             'expiration_time_usec': expirationTimeUsec,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOsLoginSshPublicKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');
}

import 'manifest/appwrite.g.dart';
import 'manifest/cloudflare.g.dart';
import 'manifest/extras.dart';
import 'manifest/google.g.dart';
import 'manifest/google_beta.g.dart';
import 'migrate_manifest.dart';

export 'manifest/appwrite.g.dart';
export 'manifest/cloudflare.g.dart';
export 'manifest/extras.dart';
export 'manifest/google.g.dart';
export 'manifest/google_beta.g.dart';

/// Every manifest, in lookup precedence: a `google_*` type is looked up in
/// `terradart_google` before `terradart_google_beta`; the hand-written
/// extras (`time_sleep`) come last.
const List<MigrateManifest> allMigrateManifests = [
  googleMigrateManifest,
  googleBetaMigrateManifest,
  appwriteMigrateManifest,
  cloudflareMigrateManifest,
  googleExtrasMigrateManifest,
];

/// The generated manifest of [package] (`terradart_cloudflare`), or `null`.
MigrateManifest? manifestForPackage(String package) {
  for (final m in allMigrateManifests) {
    if (m.package == package) return m;
  }
  return null;
}

/// The first manifest, in [allMigrateManifests] order, that curates [tfType]
/// as [kind] — together with its entry.
({MigrateManifest manifest, MigrateEntry entry})? findMigrateEntry(
  String tfType,
  CatalogKind kind,
) {
  for (final m in allMigrateManifests) {
    final e = m.entryFor(tfType, kind);
    if (e != null) return (manifest: m, entry: e);
  }
  return null;
}

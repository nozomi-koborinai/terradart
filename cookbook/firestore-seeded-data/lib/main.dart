library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/firestore.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Stack demonstrating Firestore master-data seeding via terradart v0.11.0.
///
/// Resources (~15):
///   - 1 google_project_service (firestore.googleapis.com)
///   - 1 google_firestore_database ((default), Native mode, asia-northeast1)
///   - 11 google_firestore_document across 4 collections:
///       feature_flags/{dark_mode, new_checkout, beta_invites}
///       pricing_tiers/{free, pro, enterprise}
///       i18n/{en, ja, ko}
///       regions/{us, jp}
///   - 1 google_firestore_index (pricing_tiers: monthly_usd ASC, label ASC)
///   - 1 google_firestore_backup_schedule (daily, 7-day retention)
final class FirestoreSeededDataStack extends Stack {
  FirestoreSeededDataStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
          backend: const LocalBackend(),
          devMode: true,
        ) {
    final apiFirestore = add(
      GoogleProjectService(
        localName: 'api_firestore',
        service: TfArg.literal('firestore.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final db = add(
      GoogleFirestoreDatabase(
        localName: 'default',
        name: TfArg.literal('(default)'),
        locationId: TfArg.literal('asia-northeast1'),
        type: TfArg.literal(FirestoreDatabaseType.firestoreNative),
        deleteProtectionState: TfArg.literal(DeleteProtectionState.disabled),
        // Without this, the provider default (`ABANDON`) leaves the
        // database in place on `terraform destroy` — Terraform reports
        // success but the resource survives in GCP. See FRICTIONS.md §P1.
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [ResourceDependency(apiFirestore)],
      ),
    );

    // feature_flags collection (3 docs)
    add(
      GoogleFirestoreDocument(
        localName: 'flag_dark_mode',
        collection: TfArg.literal('feature_flags'),
        documentId: TfArg.literal('dark_mode'),
        fields: FirestoreFields.encode({
          'enabled': true,
          'rollout_pct': 100,
          'last_updated': DateTime.utc(2026, 5, 22),
        }),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    add(
      GoogleFirestoreDocument(
        localName: 'flag_new_checkout',
        collection: TfArg.literal('feature_flags'),
        documentId: TfArg.literal('new_checkout'),
        fields: FirestoreFields.encode({
          'enabled': false,
          'rollout_pct': 0,
          'target_regions': ['us', 'jp'],
        }),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    add(
      GoogleFirestoreDocument(
        localName: 'flag_beta_invites',
        collection: TfArg.literal('feature_flags'),
        documentId: TfArg.literal('beta_invites'),
        fields: FirestoreFields.encode({
          'enabled': true,
          'rollout_pct': 5,
          'target_users': ['founder@example.com'],
          'metadata': {'requested_by': 'product-team'},
        }),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    // pricing_tiers collection (3 docs; enterprise references billing_profiles)
    add(
      GoogleFirestoreDocument(
        localName: 'tier_free',
        collection: TfArg.literal('pricing_tiers'),
        documentId: TfArg.literal('free'),
        fields: FirestoreFields.encode({
          'label': 'Free',
          'monthly_usd': 0,
          'features': ['analytics_basic'],
        }),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    add(
      GoogleFirestoreDocument(
        localName: 'tier_pro',
        collection: TfArg.literal('pricing_tiers'),
        documentId: TfArg.literal('pro'),
        fields: FirestoreFields.encode({
          'label': 'Pro',
          'monthly_usd': 29,
          'features': ['analytics_basic', 'priority_support'],
        }),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    add(
      GoogleFirestoreDocument(
        localName: 'tier_enterprise',
        collection: TfArg.literal('pricing_tiers'),
        documentId: TfArg.literal('enterprise'),
        fields: FirestoreFields.encode({
          'label': 'Enterprise',
          'monthly_usd': 499,
          'features': [
            'analytics_basic',
            'priority_support',
            'sso',
            'audit_log',
          ],
          'preferred_billing': FirestoreReference(
            'projects/$projectId/databases/(default)/documents/billing_profiles/annual',
          ),
        }),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    // i18n collection (3 docs)
    add(
      GoogleFirestoreDocument(
        localName: 'i18n_en',
        collection: TfArg.literal('i18n'),
        documentId: TfArg.literal('en'),
        fields: FirestoreFields.encode({
          'greeting': 'Hello',
          'currency_symbol': r'$',
          'date_format': 'MM/DD/YYYY',
          'translations': {'subscribe': 'Subscribe', 'cancel': 'Cancel'},
        }),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    add(
      GoogleFirestoreDocument(
        localName: 'i18n_ja',
        collection: TfArg.literal('i18n'),
        documentId: TfArg.literal('ja'),
        fields: FirestoreFields.encode({
          'greeting': 'こんにちは',
          'currency_symbol': '¥',
          'date_format': 'YYYY/MM/DD',
          'translations': {'subscribe': '登録', 'cancel': 'キャンセル'},
        }),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    add(
      GoogleFirestoreDocument(
        localName: 'i18n_ko',
        collection: TfArg.literal('i18n'),
        documentId: TfArg.literal('ko'),
        fields: FirestoreFields.encode({
          'greeting': '안녕하세요',
          'currency_symbol': '₩',
          'date_format': 'YYYY-MM-DD',
          'translations': {'subscribe': '구독', 'cancel': '취소'},
        }),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    // regions collection (2 docs; both have geo-point office_location)
    add(
      GoogleFirestoreDocument(
        localName: 'region_us',
        collection: TfArg.literal('regions'),
        documentId: TfArg.literal('us'),
        fields: FirestoreFields.encode({
          'name': 'United States',
          'currency': 'USD',
          'office_location': const FirestoreGeoPoint(
            latitude: 37.7749,
            longitude: -122.4194,
          ),
          'shipping_zones': ['west', 'central', 'east'],
        }),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    add(
      GoogleFirestoreDocument(
        localName: 'region_jp',
        collection: TfArg.literal('regions'),
        documentId: TfArg.literal('jp'),
        fields: FirestoreFields.encode({
          'name': 'Japan',
          'currency': 'JPY',
          'office_location': const FirestoreGeoPoint(
            latitude: 35.6762,
            longitude: 139.6503,
          ),
          'vat_rate': 0.10,
        }),
        dependsOn: [ResourceDependency(db)],
      ),
    );

    // Composite index on pricing_tiers.monthly_usd (ASC) + label (ASC).
    add(
      GoogleFirestoreIndex(
        localName: 'pricing_tiers_by_price',
        collection: TfArg.literal('pricing_tiers'),
        database: TfArg.ref(db.nameRef),
        queryScope: TfArg.literal(FirestoreIndexQueryScope.collection),
        fields: [
          FirestoreIndexIndexField(
            fieldPath: TfArg.literal('monthly_usd'),
            spec: const FirestoreIndexIndexFieldOrder(
              FirestoreIndexOrder.ascending,
            ),
          ),
          FirestoreIndexIndexField(
            fieldPath: TfArg.literal('label'),
            spec: const FirestoreIndexIndexFieldOrder(
              FirestoreIndexOrder.ascending,
            ),
          ),
        ],
      ),
    );

    // Daily backup schedule, 7-day retention.
    add(
      GoogleFirestoreBackupSchedule(
        localName: 'daily',
        database: TfArg.ref(db.nameRef),
        retention: TfArg.literal('604800s'),
        recurrence: const FirestoreBackupScheduleDailyRecurrence(),
        dependsOn: [ResourceDependency(db)],
      ),
    );
  }
}

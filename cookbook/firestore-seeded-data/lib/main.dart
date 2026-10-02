library;

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
        'api_firestore',
        service: .literal('firestore.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final db = add(
      GoogleFirestoreDatabase(
        'default',
        name: .literal('(default)'),
        locationId: .literal('asia-northeast1'),
        type: .firestoreNative,
        deleteProtectionState: .disabled,
        // Without this, the provider default (`ABANDON`) leaves the
        // database in place on `terraform destroy` — Terraform reports
        // success but the resource survives in GCP. See FRICTIONS.md §P1.
        deletionPolicy: .literal('DELETE'),
        dependsOn: [apiFirestore],
      ),
    );

    // feature_flags collection (3 docs)
    add(
      GoogleFirestoreDocument(
        'flag_dark_mode',
        collection: .literal('feature_flags'),
        documentId: .literal('dark_mode'),
        fields: FirestoreFields.encode({
          'enabled': true,
          'rollout_pct': 100,
          'last_updated': DateTime.utc(2026, 5, 22),
        }),
        dependsOn: [db],
      ),
    );

    add(
      GoogleFirestoreDocument(
        'flag_new_checkout',
        collection: .literal('feature_flags'),
        documentId: .literal('new_checkout'),
        fields: FirestoreFields.encode({
          'enabled': false,
          'rollout_pct': 0,
          'target_regions': ['us', 'jp'],
        }),
        dependsOn: [db],
      ),
    );

    add(
      GoogleFirestoreDocument(
        'flag_beta_invites',
        collection: .literal('feature_flags'),
        documentId: .literal('beta_invites'),
        fields: FirestoreFields.encode({
          'enabled': true,
          'rollout_pct': 5,
          'target_users': ['founder@example.com'],
          'metadata': {'requested_by': 'product-team'},
        }),
        dependsOn: [db],
      ),
    );

    // pricing_tiers collection (3 docs; enterprise references billing_profiles)
    add(
      GoogleFirestoreDocument(
        'tier_free',
        collection: .literal('pricing_tiers'),
        documentId: .literal('free'),
        fields: FirestoreFields.encode({
          'label': 'Free',
          'monthly_usd': 0,
          'features': ['analytics_basic'],
        }),
        dependsOn: [db],
      ),
    );

    add(
      GoogleFirestoreDocument(
        'tier_pro',
        collection: .literal('pricing_tiers'),
        documentId: .literal('pro'),
        fields: FirestoreFields.encode({
          'label': 'Pro',
          'monthly_usd': 29,
          'features': ['analytics_basic', 'priority_support'],
        }),
        dependsOn: [db],
      ),
    );

    add(
      GoogleFirestoreDocument(
        'tier_enterprise',
        collection: .literal('pricing_tiers'),
        documentId: .literal('enterprise'),
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
        dependsOn: [db],
      ),
    );

    // i18n collection (3 docs)
    add(
      GoogleFirestoreDocument(
        'i18n_en',
        collection: .literal('i18n'),
        documentId: .literal('en'),
        fields: FirestoreFields.encode({
          'greeting': 'Hello',
          'currency_symbol': r'$',
          'date_format': 'MM/DD/YYYY',
          'translations': {'subscribe': 'Subscribe', 'cancel': 'Cancel'},
        }),
        dependsOn: [db],
      ),
    );

    add(
      GoogleFirestoreDocument(
        'i18n_ja',
        collection: .literal('i18n'),
        documentId: .literal('ja'),
        fields: FirestoreFields.encode({
          'greeting': 'こんにちは',
          'currency_symbol': '¥',
          'date_format': 'YYYY/MM/DD',
          'translations': {'subscribe': '登録', 'cancel': 'キャンセル'},
        }),
        dependsOn: [db],
      ),
    );

    add(
      GoogleFirestoreDocument(
        'i18n_ko',
        collection: .literal('i18n'),
        documentId: .literal('ko'),
        fields: FirestoreFields.encode({
          'greeting': '안녕하세요',
          'currency_symbol': '₩',
          'date_format': 'YYYY-MM-DD',
          'translations': {'subscribe': '구독', 'cancel': '취소'},
        }),
        dependsOn: [db],
      ),
    );

    // regions collection (2 docs; both have geo-point office_location)
    add(
      GoogleFirestoreDocument(
        'region_us',
        collection: .literal('regions'),
        documentId: .literal('us'),
        fields: FirestoreFields.encode({
          'name': 'United States',
          'currency': 'USD',
          'office_location': const FirestoreGeoPoint(
            latitude: 37.7749,
            longitude: -122.4194,
          ),
          'shipping_zones': ['west', 'central', 'east'],
        }),
        dependsOn: [db],
      ),
    );

    add(
      GoogleFirestoreDocument(
        'region_jp',
        collection: .literal('regions'),
        documentId: .literal('jp'),
        fields: FirestoreFields.encode({
          'name': 'Japan',
          'currency': 'JPY',
          'office_location': const FirestoreGeoPoint(
            latitude: 35.6762,
            longitude: 139.6503,
          ),
          'vat_rate': 0.10,
        }),
        dependsOn: [db],
      ),
    );

    // Composite index on pricing_tiers.monthly_usd (ASC) + label (ASC).
    add(
      GoogleFirestoreIndex(
        'pricing_tiers_by_price',
        collection: .literal('pricing_tiers'),
        database: db.ref,
        queryScope: .collection,
        fields: [
          FirestoreIndexField(
            fieldPath: .literal('monthly_usd'),
            spec: const .order(FirestoreIndexOrder.ascending),
          ),
          FirestoreIndexField(
            fieldPath: .literal('label'),
            spec: const .order(FirestoreIndexOrder.ascending),
          ),
        ],
      ),
    );

    // Daily backup schedule, 7-day retention.
    add(
      GoogleFirestoreBackupSchedule(
        'daily',
        database: db.ref,
        retention: .literal('604800s'),
        recurrence: const .daily(),
        dependsOn: [db],
      ),
    );
  }
}

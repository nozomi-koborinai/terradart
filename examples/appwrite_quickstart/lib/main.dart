/// Appwrite quickstart — the filled `terradart_appwrite` catalog at pin
/// `2.0.0-beta.1`.
///
/// Covers every applyable resource and every data source. `AppwriteProjectKey`
/// is import-only (upstream create is gone) and lives in
/// `tool/example_debt.yaml` rather than teaching a create path here.
///
/// Synth needs no credentials and none appear in `tf-out/` — apply-time
/// authentication uses the `APPWRITE_ORGANIZATION_API_KEY` /
/// `APPWRITE_API_KEY` environment variables (see `AppwriteProvider`).
/// Demo literals stand in for organization / project IDs; replace them
/// when applying for real. Sensitive constructor inputs use
/// `TfArg.variable` (declared in `bin/infra.dart`).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_appwrite/auth.dart';
import 'package:terradart_appwrite/backups.dart';
import 'package:terradart_appwrite/data.dart';
import 'package:terradart_appwrite/functions.dart';
import 'package:terradart_appwrite/messaging.dart';
import 'package:terradart_appwrite/mongo.dart';
import 'package:terradart_appwrite/mysql.dart';
import 'package:terradart_appwrite/postgresql.dart';
import 'package:terradart_appwrite/project.dart';
import 'package:terradart_appwrite/provider.dart';
import 'package:terradart_appwrite/proxy.dart';
import 'package:terradart_appwrite/sites.dart';
import 'package:terradart_appwrite/storage.dart';
import 'package:terradart_appwrite/tablesdb.dart';
import 'package:terradart_appwrite/webhooks.dart';
import 'package:terradart_core/terradart_core.dart';

/// Appwrite demo stack covering the full curated catalog at this pin.
final class AppwriteDemoStack extends Stack {
  AppwriteDemoStack()
    : super(
        providers: [
          const AppwriteProvider(
            endpoint: 'https://cloud.appwrite.io/v1',
            organizationId: 'terradart-demo-org',
            projectId: 'terradart-demo',
          ),
        ],
      ) {
    // Declared here so the TfArg.variable references below resolve;
    // the values themselves arrive at `terraform apply -var` time.
    addVariable(
      'backup_access_key',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'backup_secret_key',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'function_api_url',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'site_api_url',
      const TfVariable(type: 'string', sensitive: true),
    );

    add(AppwriteProject('demo', name: .literal('terradart-demo')));

    final team = add(AppwriteAuthTeam('editors', name: .literal('editors')));
    final user = add(
      AppwriteAuthUser(
        'demo_user',
        name: .literal('Demo User'),
        email: .literal('demo@example.com'),
      ),
    );

    final bucket = add(
      AppwriteStorageBucket(
        'uploads',
        name: .literal('uploads'),
        fileSecurity: .literal(true),
        maximumFileSize: .literal(10485760),
        permissions: .literal([
          .read(.any),
          .write(.team(team.ref, role: 'owner')),
        ]),
      ),
    );
    add(
      AppwriteStorageFile(
        'seed',
        bucketId: bucket.ref,
        filePath: .literal('seed.txt'),
        name: .literal('seed.txt'),
        permissions: .literal([.read(.user(user.ref))]),
      ),
    );

    final db = add(AppwriteTablesdb('main', name: .literal('main')));
    final table = add(
      AppwriteTablesdbTable(
        'users',
        databaseId: db.ref,
        name: .literal('users'),
        permissions: .literal([
          .read(.users()),
          .create(.users(verified: true)),
        ]),
      ),
    );
    add(
      AppwriteTablesdbColumn(
        'name',
        databaseId: db.ref,
        tableId: table.ref,
        type: .literal(.varchar),
        key: .literal('name'),
        size: .literal(255),
        columnRequired: .literal(true),
      ),
    );
    add(
      AppwriteTablesdbIndex(
        'name_idx',
        databaseId: db.ref,
        tableId: table.ref,
        type: .literal('key'),
        columns: .literal(['name']),
        key: .literal('name_idx'),
      ),
    );
    add(
      AppwriteTablesdbRow(
        'seed',
        databaseId: db.ref,
        tableId: table.ref,
        data: .literal('{"name":"demo"}'),
        permissions: .literal([.read(.any), .update(.label('admin'))]),
      ),
    );

    final pg = add(
      AppwritePostgresqlDatabase('pg', name: .literal('terradart-pg')),
    );
    add(
      AppwritePostgresqlBackupPolicy(
        'pg_nightly',
        databaseId: pg.ref,
        name: .literal('nightly'),
        retention: .literal(7),
        schedule: .literal('0 2 * * *'),
      ),
    );
    add(
      AppwritePostgresqlBackupStorage(
        'pg_offsite',
        databaseId: pg.ref,
        bucket: .literal('terradart-pg-backups'),
        storageProvider: .literal(.s3),
        accessKey: TfArg.variable('backup_access_key'),
        secretKey: TfArg.variable('backup_secret_key'),
      ),
    );
    add(AppwritePostgresqlBranch('pg_dev', databaseId: pg.ref));
    add(AppwritePostgresqlPooler('pg_pool', databaseId: pg.ref));
    add(
      AppwritePostgresqlExtension(
        'pg_uuid',
        databaseId: pg.ref,
        name: .literal('uuid-ossp'),
      ),
    );

    final mysql = add(
      AppwriteMysqlDatabase('mysql', name: .literal('terradart-mysql')),
    );
    add(
      AppwriteMysqlBackupPolicy(
        'mysql_nightly',
        databaseId: mysql.ref,
        name: .literal('nightly'),
        retention: .literal(7),
        schedule: .literal('0 2 * * *'),
      ),
    );
    add(
      AppwriteMysqlBackupStorage(
        'mysql_offsite',
        databaseId: mysql.ref,
        bucket: .literal('terradart-mysql-backups'),
        storageProvider: .literal(.s3),
        accessKey: TfArg.variable('backup_access_key'),
        secretKey: TfArg.variable('backup_secret_key'),
      ),
    );
    add(AppwriteMysqlBranch('mysql_dev', databaseId: mysql.ref));
    add(AppwriteMysqlPooler('mysql_pool', databaseId: mysql.ref));

    final mongo = add(
      AppwriteMongoDatabase('mongo', name: .literal('terradart-mongo')),
    );
    add(
      AppwriteMongoBackupPolicy(
        'mongo_nightly',
        databaseId: mongo.ref,
        name: .literal('nightly'),
        retention: .literal(7),
        schedule: .literal('0 2 * * *'),
      ),
    );
    add(
      AppwriteMongoBackupStorage(
        'mongo_offsite',
        databaseId: mongo.ref,
        bucket: .literal('terradart-mongo-backups'),
        storageProvider: .literal(.s3),
        accessKey: TfArg.variable('backup_access_key'),
        secretKey: TfArg.variable('backup_secret_key'),
      ),
    );
    add(AppwriteMongoBranch('mongo_dev', databaseId: mongo.ref));

    final fn = add(
      AppwriteFunction(
        'on_signup',
        name: .literal('on-signup'),
        runtime: .literal('node-22'),
        entrypoint: .literal('index.js'),
        timeout: .literal(30),
      ),
    );
    add(
      AppwriteFunctionVariable(
        'api_url',
        functionId: fn.ref,
        key: .literal('API_URL'),
        value: TfArg.variable('function_api_url'),
      ),
    );
    add(
      AppwriteFunctionDeployment(
        'on_signup_src',
        functionId: fn.ref,
        sourceType: .literal(.template),
        owner: .literal('appwrite'),
        repository: .literal('templates-for-sites'),
        type: .literal('branch'),
        reference: .literal('main'),
        activate: .literal(true),
      ),
    );

    final site = add(
      AppwriteSite(
        'dashboard',
        name: .literal('dashboard'),
        framework: .literal('nextjs'),
        buildRuntime: .literal('node-22'),
        installCommand: .literal('npm install'),
        buildCommand: .literal('npm run build'),
      ),
    );
    add(
      AppwriteSiteVariable(
        'public_api',
        siteId: site.ref,
        key: .literal('NEXT_PUBLIC_API_URL'),
        value: TfArg.variable('site_api_url'),
      ),
    );
    add(
      AppwriteSiteDeployment(
        'dashboard_src',
        siteId: site.ref,
        sourceType: .literal(.template),
        owner: .literal('appwrite'),
        repository: .literal('templates-for-sites'),
        rootDirectory: .literal('nextjs/starter'),
        type: .literal('branch'),
        reference: .literal('main'),
        activate: .literal(true),
      ),
    );

    add(
      AppwriteProxyRule(
        'dash_domain',
        domain: .literal('dash.terradart-demo.example'),
        resourceId: site.id,
        type: .literal(.site),
      ),
    );

    add(
      AppwriteMessagingProvider(
        'smtp',
        name: .literal('smtp'),
        type: .literal(.smtp),
        host: .literal('smtp.example.com'),
        port: .literal(587),
      ),
    );
    final topic = add(
      AppwriteMessagingTopic('alerts', name: .literal('alerts')),
    );
    add(
      AppwriteMessagingSubscriber(
        'ops',
        topicId: topic.ref,
        targetId: .literal('target-demo'),
      ),
    );

    final hook = add(
      AppwriteWebhook(
        'user_events',
        name: .literal('user-events'),
        url: .literal('https://api.example.com/webhooks/users'),
        events: .literal(['users.*.create', 'users.*.update']),
      ),
    );
    add(
      AppwriteBackupPolicy(
        'shared',
        retention: .literal(14),
        schedule: .literal('0 3 * * *'),
        services: .literal(['database', 'storage']),
      ),
    );

    add(DataAppwriteAuthTeam('editors_ds', id: team.id));
    add(DataAppwriteAuthUser('demo_user_ds', id: user.id));
    add(DataAppwriteFunction('fn_ds', id: fn.id));
    add(DataAppwriteMessagingTopic('topic_ds', id: topic.id));
    add(DataAppwriteSite('site_ds', id: site.id));
    add(DataAppwriteStorageBucket('bucket_ds', id: bucket.id));
    add(DataAppwriteTablesdb('db_ds', id: db.id));
    add(DataAppwriteWebhook('hook_ds', id: hook.id));

    add(DataAppwritePostgresqlSpecifications('pg_specs'));
    add(DataAppwritePostgresqlDatabases('pg_list'));
    add(DataAppwritePostgresqlDatabase('pg_ds', id: pg.id));
    add(DataAppwritePostgresqlDatabaseStatus('pg_status', databaseId: pg.ref));
    add(DataAppwritePostgresqlBackups('pg_backups', databaseId: pg.ref));
    add(DataAppwritePostgresqlExtensions('pg_exts', databaseId: pg.ref));

    add(DataAppwriteMysqlSpecifications('mysql_specs'));
    add(DataAppwriteMysqlDatabases('mysql_list'));
    add(DataAppwriteMysqlDatabase('mysql_ds', id: mysql.id));
    add(DataAppwriteMysqlDatabaseStatus('mysql_status', databaseId: mysql.ref));
    add(DataAppwriteMysqlBackups('mysql_backups', databaseId: mysql.ref));

    add(DataAppwriteMongoSpecifications('mongo_specs'));
    add(DataAppwriteMongoDatabases('mongo_list'));
    add(DataAppwriteMongoDatabase('mongo_ds', id: mongo.id));
    add(DataAppwriteMongoDatabaseStatus('mongo_status', databaseId: mongo.ref));
    add(DataAppwriteMongoBackups('mongo_backups', databaseId: mongo.ref));
  }
}

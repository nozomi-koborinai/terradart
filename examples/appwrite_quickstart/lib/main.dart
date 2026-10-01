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

    add(AppwriteProject(localName: 'demo', name: .literal('terradart-demo')));

    final team = add(
      AppwriteAuthTeam(localName: 'editors', name: .literal('editors')),
    );
    final user = add(
      AppwriteAuthUser(
        localName: 'demo_user',
        name: .literal('Demo User'),
        email: .literal('demo@example.com'),
      ),
    );

    final bucket = add(
      AppwriteStorageBucket(
        localName: 'uploads',
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
        localName: 'seed',
        bucketId: bucket.ref,
        filePath: .literal('seed.txt'),
        name: .literal('seed.txt'),
        permissions: .literal([.read(.user(user.ref))]),
      ),
    );

    final db = add(AppwriteTablesdb(localName: 'main', name: .literal('main')));
    final table = add(
      AppwriteTablesdbTable(
        localName: 'users',
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
        localName: 'name',
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
        localName: 'name_idx',
        databaseId: db.ref,
        tableId: table.ref,
        type: .literal('key'),
        columns: .literal(['name']),
        key: .literal('name_idx'),
      ),
    );
    add(
      AppwriteTablesdbRow(
        localName: 'seed',
        databaseId: db.ref,
        tableId: table.ref,
        data: .literal('{"name":"demo"}'),
        permissions: .literal([.read(.any), .update(.label('admin'))]),
      ),
    );

    final pg = add(
      AppwritePostgresqlDatabase(
        localName: 'pg',
        name: .literal('terradart-pg'),
      ),
    );
    add(
      AppwritePostgresqlBackupPolicy(
        localName: 'pg_nightly',
        databaseId: pg.ref,
        name: .literal('nightly'),
        retention: .literal(7),
        schedule: .literal('0 2 * * *'),
      ),
    );
    add(
      AppwritePostgresqlBackupStorage(
        localName: 'pg_offsite',
        databaseId: pg.ref,
        bucket: .literal('terradart-pg-backups'),
        storageProvider: .literal(.s3),
        accessKey: TfArg.variable('backup_access_key'),
        secretKey: TfArg.variable('backup_secret_key'),
      ),
    );
    add(AppwritePostgresqlBranch(localName: 'pg_dev', databaseId: pg.ref));
    add(AppwritePostgresqlPooler(localName: 'pg_pool', databaseId: pg.ref));
    add(
      AppwritePostgresqlExtension(
        localName: 'pg_uuid',
        databaseId: pg.ref,
        name: .literal('uuid-ossp'),
      ),
    );

    final mysql = add(
      AppwriteMysqlDatabase(
        localName: 'mysql',
        name: .literal('terradart-mysql'),
      ),
    );
    add(
      AppwriteMysqlBackupPolicy(
        localName: 'mysql_nightly',
        databaseId: mysql.ref,
        name: .literal('nightly'),
        retention: .literal(7),
        schedule: .literal('0 2 * * *'),
      ),
    );
    add(
      AppwriteMysqlBackupStorage(
        localName: 'mysql_offsite',
        databaseId: mysql.ref,
        bucket: .literal('terradart-mysql-backups'),
        storageProvider: .literal(.s3),
        accessKey: TfArg.variable('backup_access_key'),
        secretKey: TfArg.variable('backup_secret_key'),
      ),
    );
    add(AppwriteMysqlBranch(localName: 'mysql_dev', databaseId: mysql.ref));
    add(AppwriteMysqlPooler(localName: 'mysql_pool', databaseId: mysql.ref));

    final mongo = add(
      AppwriteMongoDatabase(
        localName: 'mongo',
        name: .literal('terradart-mongo'),
      ),
    );
    add(
      AppwriteMongoBackupPolicy(
        localName: 'mongo_nightly',
        databaseId: mongo.ref,
        name: .literal('nightly'),
        retention: .literal(7),
        schedule: .literal('0 2 * * *'),
      ),
    );
    add(
      AppwriteMongoBackupStorage(
        localName: 'mongo_offsite',
        databaseId: mongo.ref,
        bucket: .literal('terradart-mongo-backups'),
        storageProvider: .literal(.s3),
        accessKey: TfArg.variable('backup_access_key'),
        secretKey: TfArg.variable('backup_secret_key'),
      ),
    );
    add(AppwriteMongoBranch(localName: 'mongo_dev', databaseId: mongo.ref));

    final fn = add(
      AppwriteFunction(
        localName: 'on_signup',
        name: .literal('on-signup'),
        runtime: .literal('node-22'),
        entrypoint: .literal('index.js'),
        timeout: .literal(30),
      ),
    );
    add(
      AppwriteFunctionVariable(
        localName: 'api_url',
        functionId: fn.ref,
        key: .literal('API_URL'),
        value: TfArg.variable('function_api_url'),
      ),
    );
    add(
      AppwriteFunctionDeployment(
        localName: 'on_signup_src',
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
        localName: 'dashboard',
        name: .literal('dashboard'),
        framework: .literal('nextjs'),
        buildRuntime: .literal('node-22'),
        installCommand: .literal('npm install'),
        buildCommand: .literal('npm run build'),
      ),
    );
    add(
      AppwriteSiteVariable(
        localName: 'public_api',
        siteId: site.ref,
        key: .literal('NEXT_PUBLIC_API_URL'),
        value: TfArg.variable('site_api_url'),
      ),
    );
    add(
      AppwriteSiteDeployment(
        localName: 'dashboard_src',
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
        localName: 'dash_domain',
        domain: .literal('dash.terradart-demo.example'),
        resourceId: site.id,
        type: .literal(.site),
      ),
    );

    add(
      AppwriteMessagingProvider(
        localName: 'smtp',
        name: .literal('smtp'),
        type: .literal(.smtp),
        host: .literal('smtp.example.com'),
        port: .literal(587),
      ),
    );
    final topic = add(
      AppwriteMessagingTopic(localName: 'alerts', name: .literal('alerts')),
    );
    add(
      AppwriteMessagingSubscriber(
        localName: 'ops',
        topicId: topic.ref,
        targetId: .literal('target-demo'),
      ),
    );

    final hook = add(
      AppwriteWebhook(
        localName: 'user_events',
        name: .literal('user-events'),
        url: .literal('https://api.example.com/webhooks/users'),
        events: .literal(['users.*.create', 'users.*.update']),
      ),
    );
    add(
      AppwriteBackupPolicy(
        localName: 'shared',
        retention: .literal(14),
        schedule: .literal('0 3 * * *'),
        services: .literal(['database', 'storage']),
      ),
    );

    add(DataAppwriteAuthTeam(localName: 'editors_ds', id: team.id));
    add(DataAppwriteAuthUser(localName: 'demo_user_ds', id: user.id));
    add(DataAppwriteFunction(localName: 'fn_ds', id: fn.id));
    add(DataAppwriteMessagingTopic(localName: 'topic_ds', id: topic.id));
    add(DataAppwriteSite(localName: 'site_ds', id: site.id));
    add(DataAppwriteStorageBucket(localName: 'bucket_ds', id: bucket.id));
    add(DataAppwriteTablesdb(localName: 'db_ds', id: db.id));
    add(DataAppwriteWebhook(localName: 'hook_ds', id: hook.id));

    add(DataAppwritePostgresqlSpecifications(localName: 'pg_specs'));
    add(DataAppwritePostgresqlDatabases(localName: 'pg_list'));
    add(DataAppwritePostgresqlDatabase(localName: 'pg_ds', id: pg.id));
    add(
      DataAppwritePostgresqlDatabaseStatus(
        localName: 'pg_status',
        databaseId: pg.ref,
      ),
    );
    add(
      DataAppwritePostgresqlBackups(
        localName: 'pg_backups',
        databaseId: pg.ref,
      ),
    );
    add(
      DataAppwritePostgresqlExtensions(
        localName: 'pg_exts',
        databaseId: pg.ref,
      ),
    );

    add(DataAppwriteMysqlSpecifications(localName: 'mysql_specs'));
    add(DataAppwriteMysqlDatabases(localName: 'mysql_list'));
    add(DataAppwriteMysqlDatabase(localName: 'mysql_ds', id: mysql.id));
    add(
      DataAppwriteMysqlDatabaseStatus(
        localName: 'mysql_status',
        databaseId: mysql.ref,
      ),
    );
    add(
      DataAppwriteMysqlBackups(
        localName: 'mysql_backups',
        databaseId: mysql.ref,
      ),
    );

    add(DataAppwriteMongoSpecifications(localName: 'mongo_specs'));
    add(DataAppwriteMongoDatabases(localName: 'mongo_list'));
    add(DataAppwriteMongoDatabase(localName: 'mongo_ds', id: mongo.id));
    add(
      DataAppwriteMongoDatabaseStatus(
        localName: 'mongo_status',
        databaseId: mongo.ref,
      ),
    );
    add(
      DataAppwriteMongoBackups(
        localName: 'mongo_backups',
        databaseId: mongo.ref,
      ),
    );
  }
}

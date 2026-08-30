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

    add(
      AppwriteProject(
        localName: 'demo',
        name: TfArg.literal('terradart-demo'),
      ),
    );

    final bucket = add(
      AppwriteStorageBucket(
        localName: 'uploads',
        name: TfArg.literal('uploads'),
        fileSecurity: TfArg.literal(true),
        maximumFileSize: TfArg.literal(10485760),
      ),
    );
    add(
      AppwriteStorageFile(
        localName: 'seed',
        bucketId: TfArg.ref(bucket.id),
        filePath: TfArg.literal('seed.txt'),
        name: TfArg.literal('seed.txt'),
      ),
    );

    final db = add(
      AppwriteTablesdb(
        localName: 'main',
        name: TfArg.literal('main'),
      ),
    );
    final table = add(
      AppwriteTablesdbTable(
        localName: 'users',
        databaseId: TfArg.ref(db.id),
        name: TfArg.literal('users'),
      ),
    );
    add(
      AppwriteTablesdbColumn(
        localName: 'name',
        databaseId: TfArg.ref(db.id),
        tableId: TfArg.ref(table.id),
        type: TfArg.literal('varchar'),
        key: TfArg.literal('name'),
        size: TfArg.literal(255),
        columnRequired: TfArg.literal(true),
      ),
    );
    add(
      AppwriteTablesdbIndex(
        localName: 'name_idx',
        databaseId: TfArg.ref(db.id),
        tableId: TfArg.ref(table.id),
        type: TfArg.literal('key'),
        columns: TfArg.literal(['name']),
        key: TfArg.literal('name_idx'),
      ),
    );
    add(
      AppwriteTablesdbRow(
        localName: 'seed',
        databaseId: TfArg.ref(db.id),
        tableId: TfArg.ref(table.id),
        data: TfArg.literal('{"name":"demo"}'),
      ),
    );

    final pg = add(
      AppwritePostgresqlDatabase(
        localName: 'pg',
        name: TfArg.literal('terradart-pg'),
      ),
    );
    add(
      AppwritePostgresqlBackupPolicy(
        localName: 'pg_nightly',
        databaseId: TfArg.ref(pg.id),
        name: TfArg.literal('nightly'),
        retention: TfArg.literal(7),
        schedule: TfArg.literal('0 2 * * *'),
      ),
    );
    add(
      AppwritePostgresqlBackupStorage(
        localName: 'pg_offsite',
        databaseId: TfArg.ref(pg.id),
        bucket: TfArg.literal('terradart-pg-backups'),
        storageProvider: TfArg.literal('s3'),
        accessKey: TfArg.variable('backup_access_key'),
        secretKey: TfArg.variable('backup_secret_key'),
      ),
    );
    add(
      AppwritePostgresqlBranch(
        localName: 'pg_dev',
        databaseId: TfArg.ref(pg.id),
      ),
    );
    add(
      AppwritePostgresqlPooler(
        localName: 'pg_pool',
        databaseId: TfArg.ref(pg.id),
      ),
    );
    add(
      AppwritePostgresqlExtension(
        localName: 'pg_uuid',
        databaseId: TfArg.ref(pg.id),
        name: TfArg.literal('uuid-ossp'),
      ),
    );

    final mysql = add(
      AppwriteMysqlDatabase(
        localName: 'mysql',
        name: TfArg.literal('terradart-mysql'),
      ),
    );
    add(
      AppwriteMysqlBackupPolicy(
        localName: 'mysql_nightly',
        databaseId: TfArg.ref(mysql.id),
        name: TfArg.literal('nightly'),
        retention: TfArg.literal(7),
        schedule: TfArg.literal('0 2 * * *'),
      ),
    );
    add(
      AppwriteMysqlBackupStorage(
        localName: 'mysql_offsite',
        databaseId: TfArg.ref(mysql.id),
        bucket: TfArg.literal('terradart-mysql-backups'),
        storageProvider: TfArg.literal('s3'),
        accessKey: TfArg.variable('backup_access_key'),
        secretKey: TfArg.variable('backup_secret_key'),
      ),
    );
    add(
      AppwriteMysqlBranch(
        localName: 'mysql_dev',
        databaseId: TfArg.ref(mysql.id),
      ),
    );
    add(
      AppwriteMysqlPooler(
        localName: 'mysql_pool',
        databaseId: TfArg.ref(mysql.id),
      ),
    );

    final mongo = add(
      AppwriteMongoDatabase(
        localName: 'mongo',
        name: TfArg.literal('terradart-mongo'),
      ),
    );
    add(
      AppwriteMongoBackupPolicy(
        localName: 'mongo_nightly',
        databaseId: TfArg.ref(mongo.id),
        name: TfArg.literal('nightly'),
        retention: TfArg.literal(7),
        schedule: TfArg.literal('0 2 * * *'),
      ),
    );
    add(
      AppwriteMongoBackupStorage(
        localName: 'mongo_offsite',
        databaseId: TfArg.ref(mongo.id),
        bucket: TfArg.literal('terradart-mongo-backups'),
        storageProvider: TfArg.literal('s3'),
        accessKey: TfArg.variable('backup_access_key'),
        secretKey: TfArg.variable('backup_secret_key'),
      ),
    );
    add(
      AppwriteMongoBranch(
        localName: 'mongo_dev',
        databaseId: TfArg.ref(mongo.id),
      ),
    );

    final team = add(
      AppwriteAuthTeam(
        localName: 'editors',
        name: TfArg.literal('editors'),
      ),
    );
    final user = add(
      AppwriteAuthUser(
        localName: 'demo_user',
        name: TfArg.literal('Demo User'),
        email: TfArg.literal('demo@example.com'),
      ),
    );

    final fn = add(
      AppwriteFunction(
        localName: 'on_signup',
        name: TfArg.literal('on-signup'),
        runtime: TfArg.literal('node-22'),
        entrypoint: TfArg.literal('index.js'),
        timeout: TfArg.literal(30),
      ),
    );
    add(
      AppwriteFunctionVariable(
        localName: 'api_url',
        functionId: TfArg.ref(fn.id),
        key: TfArg.literal('API_URL'),
        value: TfArg.variable('function_api_url'),
      ),
    );
    add(
      AppwriteFunctionDeployment(
        localName: 'on_signup_src',
        functionId: TfArg.ref(fn.id),
        sourceType: TfArg.literal('template'),
        owner: TfArg.literal('appwrite'),
        repository: TfArg.literal('templates-for-sites'),
        type: TfArg.literal('branch'),
        reference: TfArg.literal('main'),
        activate: TfArg.literal(true),
      ),
    );

    final site = add(
      AppwriteSite(
        localName: 'dashboard',
        name: TfArg.literal('dashboard'),
        framework: TfArg.literal('nextjs'),
        buildRuntime: TfArg.literal('node-22'),
        installCommand: TfArg.literal('npm install'),
        buildCommand: TfArg.literal('npm run build'),
      ),
    );
    add(
      AppwriteSiteVariable(
        localName: 'public_api',
        siteId: TfArg.ref(site.id),
        key: TfArg.literal('NEXT_PUBLIC_API_URL'),
        value: TfArg.variable('site_api_url'),
      ),
    );
    add(
      AppwriteSiteDeployment(
        localName: 'dashboard_src',
        siteId: TfArg.ref(site.id),
        sourceType: TfArg.literal('template'),
        owner: TfArg.literal('appwrite'),
        repository: TfArg.literal('templates-for-sites'),
        rootDirectory: TfArg.literal('nextjs/starter'),
        type: TfArg.literal('branch'),
        reference: TfArg.literal('main'),
        activate: TfArg.literal(true),
      ),
    );

    add(
      AppwriteProxyRule(
        localName: 'dash_domain',
        domain: TfArg.literal('dash.terradart-demo.example'),
        resourceId: TfArg.ref(site.id),
        type: TfArg.literal('site'),
      ),
    );

    add(
      AppwriteMessagingProvider(
        localName: 'smtp',
        name: TfArg.literal('smtp'),
        type: TfArg.literal('smtp'),
        host: TfArg.literal('smtp.example.com'),
        port: TfArg.literal(587),
      ),
    );
    final topic = add(
      AppwriteMessagingTopic(
        localName: 'alerts',
        name: TfArg.literal('alerts'),
      ),
    );
    add(
      AppwriteMessagingSubscriber(
        localName: 'ops',
        topicId: TfArg.ref(topic.id),
        targetId: TfArg.literal('target-demo'),
      ),
    );

    final hook = add(
      AppwriteWebhook(
        localName: 'user_events',
        name: TfArg.literal('user-events'),
        url: TfArg.literal('https://api.example.com/webhooks/users'),
        events: TfArg.literal(['users.*.create', 'users.*.update']),
      ),
    );
    add(
      AppwriteBackupPolicy(
        localName: 'shared',
        retention: TfArg.literal(14),
        schedule: TfArg.literal('0 3 * * *'),
        services: TfArg.literal(['database', 'storage']),
      ),
    );

    addData(
      DataAppwriteAuthTeam(
        localName: 'editors_ds',
        id: TfArg.ref(team.id),
      ),
    );
    addData(
      DataAppwriteAuthUser(
        localName: 'demo_user_ds',
        id: TfArg.ref(user.id),
      ),
    );
    addData(
      DataAppwriteFunction(
        localName: 'fn_ds',
        id: TfArg.ref(fn.id),
      ),
    );
    addData(
      DataAppwriteMessagingTopic(
        localName: 'topic_ds',
        id: TfArg.ref(topic.id),
      ),
    );
    addData(
      DataAppwriteSite(
        localName: 'site_ds',
        id: TfArg.ref(site.id),
      ),
    );
    addData(
      DataAppwriteStorageBucket(
        localName: 'bucket_ds',
        id: TfArg.ref(bucket.id),
      ),
    );
    addData(
      DataAppwriteTablesdb(
        localName: 'db_ds',
        id: TfArg.ref(db.id),
      ),
    );
    addData(
      DataAppwriteWebhook(
        localName: 'hook_ds',
        id: TfArg.ref(hook.id),
      ),
    );

    addData(DataAppwritePostgresqlSpecifications(localName: 'pg_specs'));
    addData(DataAppwritePostgresqlDatabases(localName: 'pg_list'));
    addData(
      DataAppwritePostgresqlDatabase(
        localName: 'pg_ds',
        id: TfArg.ref(pg.id),
      ),
    );
    addData(
      DataAppwritePostgresqlDatabaseStatus(
        localName: 'pg_status',
        databaseId: TfArg.ref(pg.id),
      ),
    );
    addData(
      DataAppwritePostgresqlBackups(
        localName: 'pg_backups',
        databaseId: TfArg.ref(pg.id),
      ),
    );
    addData(
      DataAppwritePostgresqlExtensions(
        localName: 'pg_exts',
        databaseId: TfArg.ref(pg.id),
      ),
    );

    addData(DataAppwriteMysqlSpecifications(localName: 'mysql_specs'));
    addData(DataAppwriteMysqlDatabases(localName: 'mysql_list'));
    addData(
      DataAppwriteMysqlDatabase(
        localName: 'mysql_ds',
        id: TfArg.ref(mysql.id),
      ),
    );
    addData(
      DataAppwriteMysqlDatabaseStatus(
        localName: 'mysql_status',
        databaseId: TfArg.ref(mysql.id),
      ),
    );
    addData(
      DataAppwriteMysqlBackups(
        localName: 'mysql_backups',
        databaseId: TfArg.ref(mysql.id),
      ),
    );

    addData(DataAppwriteMongoSpecifications(localName: 'mongo_specs'));
    addData(DataAppwriteMongoDatabases(localName: 'mongo_list'));
    addData(
      DataAppwriteMongoDatabase(
        localName: 'mongo_ds',
        id: TfArg.ref(mongo.id),
      ),
    );
    addData(
      DataAppwriteMongoDatabaseStatus(
        localName: 'mongo_status',
        databaseId: TfArg.ref(mongo.id),
      ),
    );
    addData(
      DataAppwriteMongoBackups(
        localName: 'mongo_backups',
        databaseId: TfArg.ref(mongo.id),
      ),
    );
  }
}

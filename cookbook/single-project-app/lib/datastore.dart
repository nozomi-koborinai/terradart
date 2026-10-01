/// Tier 3: Datastore (private Cloud SQL) + Secret.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_sql.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/secret_manager.dart';
import 'package:terradart_google/service_networking.dart';

GoogleSqlDatabaseInstance buildSqlInstance({
  required GoogleComputeNetwork vpc,
  required GoogleServiceNetworkingConnection psaConnection,
}) => GoogleSqlDatabaseInstance(
  'coffee_sql',
  name: .literal('coffee-shop-sql'),
  databaseVersion: .literal(.postgres15),
  region: .literal('asia-northeast1'),
  deletionProtection: .literal(false),
  settings: SqlDatabaseInstanceSettings(
    tier: .literal('db-f1-micro'),
    ipConfiguration: .new(
      ipv4Enabled: .literal(false),
      privateNetwork: vpc.ref,
    ),
  ),
  // The SQL instance needs PSA peering active before it is created.
  dependsOn: [psaConnection],
);

GoogleSqlDatabase buildSqlDatabase(GoogleSqlDatabaseInstance sqlInstance) =>
    GoogleSqlDatabase(
      'coffee_db',
      name: .literal('coffee_orders'),
      instance: sqlInstance.ref,
    );

GoogleSqlUser buildSqlUser(
  GoogleSqlDatabaseInstance sqlInstance,
  String dbPassword,
) => GoogleSqlUser(
  'coffee_user',
  name: .literal('coffee_app'),
  instance: sqlInstance.ref,
  passwordWo: .literal(dbPassword),
  passwordWoVersion: .literal(1),
);

GoogleSecretManagerSecret buildDbPasswordSecret() => GoogleSecretManagerSecret(
  'db_password',
  secretId: .literal('coffee-shop-db-password'),
  replication: const .auto(.new()),
);

GoogleSecretManagerSecretVersion buildDbPasswordSecretVersion(
  GoogleSecretManagerSecret secret,
  String dbPassword,
) => GoogleSecretManagerSecretVersion(
  'db_password_v1',
  secret: secret.ref,
  payload: .writeOnly(
    secretDataWo: .literal(dbPassword),
    secretDataWoVersion: .literal('1'),
  ),
);

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
  localName: 'coffee_sql',
  name: .literal('coffee-shop-sql'),
  databaseVersion: .literal(.postgres15),
  region: .literal('asia-northeast1'),
  deletionProtection: .literal(false),
  settings: SqlDatabaseInstanceSettings(
    tier: .literal('db-f1-micro'),
    ipConfiguration: .new(
      ipv4Enabled: .literal(false),
      privateNetwork: .ref(vpc.selfLink),
    ),
  ),
  // SQL instance requires PSA peering active; declared via the typed
  // ResourceDependency builder (terradart_core exposes a first-class
  // `dependsOn: List<DependencyTarget>?` parameter).
  dependsOn: [ResourceDependency(psaConnection)],
);

GoogleSqlDatabase buildSqlDatabase(GoogleSqlDatabaseInstance sqlInstance) =>
    GoogleSqlDatabase(
      localName: 'coffee_db',
      name: .literal('coffee_orders'),
      instance: .ref(sqlInstance.nameRef),
    );

GoogleSqlUser buildSqlUser(
  GoogleSqlDatabaseInstance sqlInstance,
  String dbPassword,
) => GoogleSqlUser(
  localName: 'coffee_user',
  name: .literal('coffee_app'),
  instance: .ref(sqlInstance.nameRef),
  passwordWo: .literal(dbPassword),
  passwordWoVersion: .literal(1),
);

GoogleSecretManagerSecret buildDbPasswordSecret() => GoogleSecretManagerSecret(
  localName: 'db_password',
  secretId: .literal('coffee-shop-db-password'),
  replication: const .auto(.new()),
);

GoogleSecretManagerSecretVersion buildDbPasswordSecretVersion(
  GoogleSecretManagerSecret secret,
  String dbPassword,
) => GoogleSecretManagerSecretVersion(
  localName: 'db_password_v1',
  secret: .ref(secret.id),
  payload: .writeOnly(
    secretDataWo: .literal(dbPassword),
    secretDataWoVersion: .literal('1'),
  ),
);

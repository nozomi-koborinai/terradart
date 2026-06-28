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
}) =>
    GoogleSqlDatabaseInstance(
      localName: 'coffee_sql',
      name: TfArg.literal('coffee-shop-sql'),
      databaseVersion: TfArg.literal(DatabaseVersion.postgres15),
      region: TfArg.literal('asia-northeast1'),
      deletionProtection: TfArg.literal(false),
      settings: SqlDatabaseInstanceSettings(
        tier: TfArg.literal('db-f1-micro'),
        ipConfiguration: SqlDatabaseInstanceIpConfiguration(
          ipv4Enabled: TfArg.literal(false),
          privateNetwork: TfArg.ref(vpc.selfLink),
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
      name: TfArg.literal('coffee_orders'),
      instance: TfArg.ref(sqlInstance.nameRef),
    );

GoogleSqlUser buildSqlUser(
        GoogleSqlDatabaseInstance sqlInstance, String dbPassword) =>
    GoogleSqlUser(
      localName: 'coffee_user',
      name: TfArg.literal('coffee_app'),
      instance: TfArg.ref(sqlInstance.nameRef),
      passwordWo: TfArg.literal(dbPassword),
      passwordWoVersion: TfArg.literal(1),
    );

GoogleSecretManagerSecret buildDbPasswordSecret() => GoogleSecretManagerSecret(
      localName: 'db_password',
      secretId: TfArg.literal('coffee-shop-db-password'),
      replication: SecretManagerSecretReplication.auto(),
    );

GoogleSecretManagerSecretVersion buildDbPasswordSecretVersion(
  GoogleSecretManagerSecret secret,
  String dbPassword,
) =>
    GoogleSecretManagerSecretVersion(
      localName: 'db_password_v1',
      secret: TfArg.ref(secret.id),
      secretDataWo: TfArg.literal(dbPassword),
      secretDataWoVersion: TfArg.literal(1),
    );

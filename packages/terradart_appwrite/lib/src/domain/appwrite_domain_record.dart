// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_domain_record`.
const Set<String> _appwriteDomainRecordSensitive = <String>{};

/// Factory wrapper for `appwrite_domain_record`.
///
/// Manages a DNS record in the zone Appwrite hosts for an organization domain.
final class AppwriteDomainRecord extends Resource {
  static const String tfType = 'appwrite_domain_record';

  AppwriteDomainRecord(
    super.localName, {
    TfArg<String>? comment,
    required TfArg<String> domainId,
    required TfArg<String> name,
    TfArg<String>? organizationId,
    TfArg<num>? port,
    TfArg<num>? priority,
    TfArg<num>? ttl,
    required TfArg<String> type,
    required TfArg<String> value,
    TfArg<num>? weight,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'comment': ?comment,
           'domain_id': domainId,
           'name': name,
           'organization_id': ?organizationId,
           'port': ?port,
           'priority': ?priority,
           'ttl': ?ttl,
           'type': type,
           'value': value,
           'weight': ?weight,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteDomainRecordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteDomainRecord>`.
  RefTo<AppwriteDomainRecord> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `locked` attribute.
  TfRef<bool> get locked => TfRef.attribute<bool>(this, 'locked');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `weight` attribute.
  TfRef<num> get weight => TfRef.attribute<num>(this, 'weight');
}

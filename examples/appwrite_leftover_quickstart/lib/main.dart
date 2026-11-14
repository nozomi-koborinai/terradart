// GENERATED — dart tool/coverage_stack.dart --lane appwrite

/// Coverage stack for the `terradart_appwrite` factories that
/// `appwrite_quickstart` does not construct, at the current pin.
/// Dummy constructor values; synth + terraform validate only.
/// Never apply.
library;

import 'package:terradart_appwrite/terradart_appwrite.dart';

final class AppwriteLeftoverStack extends Stack {
  AppwriteLeftoverStack() : super(providers: [const AppwriteProvider()]) {
    add(
      AppwriteAnalyticsProperty(
        'analytics_property',
        name: .literal('leftover'),
      ),
    );
    add(
      AppwriteAuthTeamMembership(
        'auth_team_membership',
        member: .userId(.literal('leftover')),
        roles: .literal(['leftover']),
        teamId: .literal('leftover'),
      ),
    );
    add(
      AppwriteAuthUserTarget(
        'auth_user_target',
        identifier: .literal('leftover@example.com'),
        providerType: .literal('email'),
        userId: .literal('leftover'),
      ),
    );
    add(AppwriteDocumentsdb('documentsdb', name: .literal('leftover')));
    add(
      AppwriteDocumentsdbCollection(
        'documentsdb_collection',
        databaseId: .literal('leftover'),
        name: .literal('leftover'),
      ),
    );
    add(
      AppwriteDocumentsdbDocument(
        'documentsdb_document',
        collectionId: .literal('leftover'),
        data: .literal('{}'),
        databaseId: .literal('leftover'),
      ),
    );
    add(
      AppwriteDocumentsdbIndex(
        'documentsdb_index',
        attributes: .literal(['leftover']),
        collectionId: .literal('leftover'),
        databaseId: .literal('leftover'),
        key: .literal('leftover'),
        type: .literal('leftover'),
      ),
    );
    add(AppwriteDomain('domain', domain: .literal('leftover.example.com')));
    add(
      AppwriteDomainNameservers(
        'domain_nameservers',
        domainId: .literal('leftover'),
      ),
    );
    add(
      AppwriteDomainNameserversVerification(
        'domain_nameservers_verification',
        domainId: .literal('leftover'),
      ),
    );
    add(
      AppwriteDomainRecord(
        'domain_record',
        domainId: .literal('leftover'),
        name: .literal('leftover'),
        type: .literal('A'),
        value: .literal('10.0.0.1'),
      ),
    );
    add(AppwriteProjectAuthMethods('project_auth_methods'));
    add(AppwriteProjectAuthPolicies('project_auth_policies'));
    add(
      AppwriteProjectEmailTemplate(
        'project_email_template',
        locale: .literal('af'),
        message: .literal('leftover'),
        subject: .literal('leftover'),
        type: .literal('verification'),
      ),
    );
    add(
      AppwriteProjectMockPhone(
        'project_mock_phone',
        number: .literal('+12025550123'),
        otp: Sensitive.expression(r'${sensitive("123456")}'),
      ),
    );
    add(
      AppwriteProjectOauthProvider(
        'project_oauth_provider',
        providerId: .literal('amazon'),
      ),
    );
    add(
      AppwriteProjectPlatform(
        'project_platform',
        hostname: .literal('leftover.example.com'),
        name: .literal('leftover'),
        type: .literal('web'),
      ),
    );
    add(AppwriteProjectProtocols('project_protocols'));
    add(AppwriteProjectServices('project_services'));
    add(
      AppwriteProjectSmtp(
        'project_smtp',
        host: .literal('leftover'),
        port: .literal(1),
        senderEmail: .literal('leftover@example.com'),
      ),
    );
    add(
      AppwriteProjectVariable(
        'project_variable',
        key: .literal('leftover'),
        value: .value(Sensitive.expression(r'${sensitive("leftover")}')),
      ),
    );
    add(AppwriteVectorsdb('vectorsdb', name: .literal('leftover')));
    add(
      AppwriteVectorsdbCollection(
        'vectorsdb_collection',
        databaseId: .literal('leftover'),
        dimension: .literal(1),
        name: .literal('leftover'),
      ),
    );
    add(
      AppwriteVectorsdbDocument(
        'vectorsdb_document',
        collectionId: .literal('leftover'),
        data: .literal('{}'),
        databaseId: .literal('leftover'),
      ),
    );
    add(
      AppwriteVectorsdbIndex(
        'vectorsdb_index',
        attributes: .literal(['leftover']),
        collectionId: .literal('leftover'),
        databaseId: .literal('leftover'),
        key: .literal('leftover'),
        type: .literal('leftover'),
      ),
    );
    add(
      AppwriteWafRule(
        'waf_rule',
        name: .literal('leftover'),
        type: .literal('bypass'),
      ),
    );
    add(DataAppwriteDocumentsdb('documentsdb', id: .literal('leftover')));
    add(DataAppwriteDocumentsdbSpecifications('documentsdb_specifications'));
    add(DataAppwriteDomain('domain', domain: .literal('leftover.example.com')));
    add(DataAppwriteVectorsdb('vectorsdb', id: .literal('leftover')));
    add(DataAppwriteVectorsdbSpecifications('vectorsdb_specifications'));
  }
}

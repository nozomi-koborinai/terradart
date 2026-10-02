import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

import '../_helpers.dart';

void main() {
  group('IamPrincipal', () {
    test('named constructors spell the provider prefix', () {
      expect(
        IamPrincipal.user('a@example.com').toTfJson(),
        'user:a@example.com',
      );
      expect(
        IamPrincipal.group('g@example.com').toTfJson(),
        'group:g@example.com',
      );
      expect(
        IamPrincipal.serviceAccount('ci@p.iam.gserviceaccount.com').toTfJson(),
        'serviceAccount:ci@p.iam.gserviceaccount.com',
      );
      expect(
        IamPrincipal.domain('example.com').toTfJson(),
        'domain:example.com',
      );
      expect(IamPrincipal.allUsers.toTfJson(), 'allUsers');
      expect(
        IamPrincipal.allAuthenticatedUsers.toTfJson(),
        'allAuthenticatedUsers',
      );
      expect(
        IamPrincipal.literal('deleted:user:x@example.com?uid=1').toTfJson(),
        'deleted:user:x@example.com?uid=1',
      );
      expect(
        IamPrincipal.arg(TfArg.variable('member')).toTfJson(),
        r'${var.member}',
      );
    });

    test('a service account principal reads its member attribute', () {
      final sa = GoogleServiceAccount(
        'runtime',
        accountId: TfArg.literal('runtime'),
      );
      expect(
        sa.principal.toTfJson(),
        r'${google_service_account.runtime.member}',
      );
    });

    test('a workload identity pool principal names the pool', () {
      final pool = GoogleIamWorkloadIdentityPool(
        'ci',
        workloadIdentityPoolId: TfArg.literal('github'),
      );
      expect(
        IamPrincipal.principalSet(
          pool.ref,
          'attribute.repository/org/repo',
        ).toTfJson(),
        r'principalSet://iam.googleapis.com/${google_iam_workload_identity_pool.ci.name}'
        '/attribute.repository/org/repo',
      );
      expect(
        IamPrincipal.principal(
          .literal('projects/1/locations/global/workloadIdentityPools/ci'),
          'repo:org/repo:ref:refs/heads/main',
        ).toTfJson(),
        'principal://iam.googleapis.com/projects/1/locations/global/'
        'workloadIdentityPools/ci/subject/repo:org/repo:ref:refs/heads/main',
      );
    });

    test('member and members synthesize as principal strings', () {
      final stack = TestStack(
        providers: const [GoogleProvider(project: 'demo')],
      );
      final bucket = stack.add(
        GoogleStorageBucket(
          'assets',
          name: .literal('assets'),
          location: .literal('US'),
        ),
      );
      final sa = stack.add(
        GoogleServiceAccount('runtime', accountId: .literal('rt')),
      );
      stack.add(
        GoogleStorageBucketIamMember(
          'public',
          bucket: bucket.ref,
          role: .literal('roles/storage.objectViewer'),
          member: .allUsers,
        ),
      );
      stack.add(
        GoogleStorageBucketIamBinding(
          'admins',
          bucket: bucket.ref,
          role: .literal('roles/storage.admin'),
          members: .literal([.group('sre@example.com'), sa.principal]),
        ),
      );
      final resources =
          stack.synth().tfJson['resource']! as Map<String, dynamic>;
      final member =
          (resources['google_storage_bucket_iam_member']!
                  as Map<String, dynamic>)['public']!
              as Map<String, dynamic>;
      final binding =
          (resources['google_storage_bucket_iam_binding']!
                  as Map<String, dynamic>)['admins']!
              as Map<String, dynamic>;
      expect(member['member'], 'allUsers');
      expect(binding['members'], [
        'group:sre@example.com',
        r'${google_service_account.runtime.member}',
      ]);
    });
  });
}

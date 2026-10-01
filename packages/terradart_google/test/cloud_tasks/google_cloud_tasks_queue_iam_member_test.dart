import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  test('queue IAM member emits name + location + project + role + member', () {
    final q = GoogleCloudTasksQueue(
      localName: 'jobs',
      name: TfArg.literal('jobs-prod'),
      location: TfArg.literal('us-central1'),
    );
    final iam = GoogleCloudTasksQueueIamMember(
      localName: 'jobs_enqueuer',
      queue: q.ref,
      role: TfArg.literal('roles/cloudtasks.enqueuer'),
      member: .serviceAccount('enq@p.iam.gserviceaccount.com'),
    );
    expect(
      iam.argMap.keys.toList(),
      equals(<String>['name', 'location', 'role', 'member', 'project']),
    );
    expect(
      iam.argMap['name']!.toTfJson(),
      equals(r'${google_cloud_tasks_queue.jobs.name}'),
    );
    expect(
      iam.argMap['location']!.toTfJson(),
      equals(r'${google_cloud_tasks_queue.jobs.location}'),
    );
    expect(
      iam.argMap['project']!.toTfJson(),
      equals(r'${google_cloud_tasks_queue.jobs.project}'),
    );
    expect(iam.terraformType, equals('google_cloud_tasks_queue_iam_member'));
  });
}

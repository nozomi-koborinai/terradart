import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  test('queue IAM member emits name + location + role + member', () {
    final q = GoogleCloudTasksQueue(
      localName: 'jobs',
      name: TfArg.literal('jobs-prod'),
      location: TfArg.literal('us-central1'),
    );
    final iam = GoogleCloudTasksQueueIamMember(
      localName: 'jobs_enqueuer',
      name: TfArg.ref(q.nameRef),
      location: TfArg.ref(q.locationRef),
      role: TfArg.literal('roles/cloudtasks.enqueuer'),
      member: TfArg.literal('serviceAccount:enq@p.iam.gserviceaccount.com'),
    );
    expect(
      iam.argMap.keys.toList(),
      equals(<String>['name', 'location', 'role', 'member']),
    );
    expect(
      iam.argMap['name']!.toTfJson(),
      equals(r'${google_cloud_tasks_queue.jobs.name}'),
    );
    expect(
      iam.argMap['location']!.toTfJson(),
      equals(r'${google_cloud_tasks_queue.jobs.location}'),
    );
    expect(iam.terraformType, equals('google_cloud_tasks_queue_iam_member'));
  });
}

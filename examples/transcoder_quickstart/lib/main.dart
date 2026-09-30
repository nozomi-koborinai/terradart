/// Transcoder job template quickstart.
///
/// Enables `transcoder.googleapis.com` and creates a reusable
/// `google_transcoder_job_template` (SD H.264 + AAC → mp4). The template
/// is JobConfig metadata only — it does not transcode media or bill
/// output-minute SKUs. `google_transcoder_job` is curated on the
/// apply-excluded leftover path (needs a source video in Cloud Storage).
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/transcoder.dart';

/// Transcoder stack: job template metadata (no job / no media).
final class TranscoderStack extends Stack {
  TranscoderStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiTranscoder = add(
      GoogleProjectService(
        localName: 'api_transcoder',
        service: .literal('transcoder.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleTranscoderJobTemplate(
        localName: 'sd',
        jobTemplateId: .literal('terradart-sd'),
        location: .literal('us-central1'),
        config: TranscoderJobTemplateConfig(
          inputs: [TranscoderJobTemplateInputs(key: .literal('input0'))],
          editList: [
            TranscoderJobTemplateEditList(
              key: .literal('atom0'),
              inputs: .literal(['input0']),
              startTimeOffset: .literal('0s'),
            ),
          ],
          elementaryStreams: [
            TranscoderJobTemplateElementaryStreams(
              key: .literal('video-stream0'),
              videoStream: TranscoderJobTemplateVideoStream(
                h264: TranscoderJobTemplateH264(
                  widthPixels: .literal(640),
                  heightPixels: .literal(360),
                  bitrateBps: .literal(550000),
                  frameRate: .literal(60),
                ),
              ),
            ),
            TranscoderJobTemplateElementaryStreams(
              key: .literal('audio-stream0'),
              audioStream: TranscoderJobTemplateAudioStream(
                codec: .literal('aac'),
                bitrateBps: .literal(64000),
              ),
            ),
          ],
          muxStreams: [
            TranscoderJobTemplateMuxStreams(
              key: .literal('sd'),
              fileName: .literal('sd.mp4'),
              container: .literal('mp4'),
              elementaryStreams: .literal(['video-stream0', 'audio-stream0']),
            ),
          ],
        ),
        dependsOn: [ResourceDependency(apiTranscoder)],
      ),
    );
  }
}

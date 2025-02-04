# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKMediaPipelines
  # @api private
  module ClientApi

    include Seahorse::Model

    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArtifactsConfiguration = Shapes::StructureShape.new(name: 'ArtifactsConfiguration')
    ArtifactsState = Shapes::StringShape.new(name: 'ArtifactsState')
    AttendeeIdList = Shapes::ListShape.new(name: 'AttendeeIdList')
    AudioArtifactsConfiguration = Shapes::StructureShape.new(name: 'AudioArtifactsConfiguration')
    AudioMuxType = Shapes::StringShape.new(name: 'AudioMuxType')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    ChimeSdkMeetingConfiguration = Shapes::StructureShape.new(name: 'ChimeSdkMeetingConfiguration')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ContentArtifactsConfiguration = Shapes::StructureShape.new(name: 'ContentArtifactsConfiguration')
    ContentMuxType = Shapes::StringShape.new(name: 'ContentMuxType')
    CreateMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'CreateMediaCapturePipelineRequest')
    CreateMediaCapturePipelineResponse = Shapes::StructureShape.new(name: 'CreateMediaCapturePipelineResponse')
    DeleteMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'DeleteMediaCapturePipelineRequest')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ExternalUserIdList = Shapes::ListShape.new(name: 'ExternalUserIdList')
    ExternalUserIdType = Shapes::StringShape.new(name: 'ExternalUserIdType')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetMediaCapturePipelineRequest = Shapes::StructureShape.new(name: 'GetMediaCapturePipelineRequest')
    GetMediaCapturePipelineResponse = Shapes::StructureShape.new(name: 'GetMediaCapturePipelineResponse')
    GuidString = Shapes::StringShape.new(name: 'GuidString')
    Iso8601Timestamp = Shapes::TimestampShape.new(name: 'Iso8601Timestamp', timestampFormat: "iso8601")
    ListMediaCapturePipelinesRequest = Shapes::StructureShape.new(name: 'ListMediaCapturePipelinesRequest')
    ListMediaCapturePipelinesResponse = Shapes::StructureShape.new(name: 'ListMediaCapturePipelinesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MediaCapturePipeline = Shapes::StructureShape.new(name: 'MediaCapturePipeline')
    MediaCapturePipelineSummary = Shapes::StructureShape.new(name: 'MediaCapturePipelineSummary')
    MediaCapturePipelineSummaryList = Shapes::ListShape.new(name: 'MediaCapturePipelineSummaryList')
    MediaPipelineSinkType = Shapes::StringShape.new(name: 'MediaPipelineSinkType')
    MediaPipelineSourceType = Shapes::StringShape.new(name: 'MediaPipelineSourceType')
    MediaPipelineStatus = Shapes::StringShape.new(name: 'MediaPipelineStatus')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResultMax = Shapes::IntegerShape.new(name: 'ResultMax')
    SelectedVideoStreams = Shapes::StructureShape.new(name: 'SelectedVideoStreams')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SourceConfiguration = Shapes::StructureShape.new(name: 'SourceConfiguration')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    VideoArtifactsConfiguration = Shapes::StructureShape.new(name: 'VideoArtifactsConfiguration')
    VideoMuxType = Shapes::StringShape.new(name: 'VideoMuxType')

    ArtifactsConfiguration.add_member(:audio, Shapes::ShapeRef.new(shape: AudioArtifactsConfiguration, required: true, location_name: "Audio"))
    ArtifactsConfiguration.add_member(:video, Shapes::ShapeRef.new(shape: VideoArtifactsConfiguration, required: true, location_name: "Video"))
    ArtifactsConfiguration.add_member(:content, Shapes::ShapeRef.new(shape: ContentArtifactsConfiguration, required: true, location_name: "Content"))
    ArtifactsConfiguration.struct_class = Types::ArtifactsConfiguration

    AttendeeIdList.member = Shapes::ShapeRef.new(shape: GuidString)

    AudioArtifactsConfiguration.add_member(:mux_type, Shapes::ShapeRef.new(shape: AudioMuxType, required: true, location_name: "MuxType"))
    AudioArtifactsConfiguration.struct_class = Types::AudioArtifactsConfiguration

    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    BadRequestException.struct_class = Types::BadRequestException

    ChimeSdkMeetingConfiguration.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: "SourceConfiguration"))
    ChimeSdkMeetingConfiguration.add_member(:artifacts_configuration, Shapes::ShapeRef.new(shape: ArtifactsConfiguration, location_name: "ArtifactsConfiguration"))
    ChimeSdkMeetingConfiguration.struct_class = Types::ChimeSdkMeetingConfiguration

    ContentArtifactsConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsState, required: true, location_name: "State"))
    ContentArtifactsConfiguration.add_member(:mux_type, Shapes::ShapeRef.new(shape: ContentMuxType, location_name: "MuxType"))
    ContentArtifactsConfiguration.struct_class = Types::ContentArtifactsConfiguration

    CreateMediaCapturePipelineRequest.add_member(:source_type, Shapes::ShapeRef.new(shape: MediaPipelineSourceType, required: true, location_name: "SourceType"))
    CreateMediaCapturePipelineRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "SourceArn"))
    CreateMediaCapturePipelineRequest.add_member(:sink_type, Shapes::ShapeRef.new(shape: MediaPipelineSinkType, required: true, location_name: "SinkType"))
    CreateMediaCapturePipelineRequest.add_member(:sink_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "SinkArn"))
    CreateMediaCapturePipelineRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMediaCapturePipelineRequest.add_member(:chime_sdk_meeting_configuration, Shapes::ShapeRef.new(shape: ChimeSdkMeetingConfiguration, location_name: "ChimeSdkMeetingConfiguration"))
    CreateMediaCapturePipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMediaCapturePipelineRequest.struct_class = Types::CreateMediaCapturePipelineRequest

    CreateMediaCapturePipelineResponse.add_member(:media_capture_pipeline, Shapes::ShapeRef.new(shape: MediaCapturePipeline, location_name: "MediaCapturePipeline"))
    CreateMediaCapturePipelineResponse.struct_class = Types::CreateMediaCapturePipelineResponse

    DeleteMediaCapturePipelineRequest.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "mediaPipelineId"))
    DeleteMediaCapturePipelineRequest.struct_class = Types::DeleteMediaCapturePipelineRequest

    ExternalUserIdList.member = Shapes::ShapeRef.new(shape: ExternalUserIdType)

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ForbiddenException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetMediaCapturePipelineRequest.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "mediaPipelineId"))
    GetMediaCapturePipelineRequest.struct_class = Types::GetMediaCapturePipelineRequest

    GetMediaCapturePipelineResponse.add_member(:media_capture_pipeline, Shapes::ShapeRef.new(shape: MediaCapturePipeline, location_name: "MediaCapturePipeline"))
    GetMediaCapturePipelineResponse.struct_class = Types::GetMediaCapturePipelineResponse

    ListMediaCapturePipelinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListMediaCapturePipelinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListMediaCapturePipelinesRequest.struct_class = Types::ListMediaCapturePipelinesRequest

    ListMediaCapturePipelinesResponse.add_member(:media_capture_pipelines, Shapes::ShapeRef.new(shape: MediaCapturePipelineSummaryList, location_name: "MediaCapturePipelines"))
    ListMediaCapturePipelinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListMediaCapturePipelinesResponse.struct_class = Types::ListMediaCapturePipelinesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MediaCapturePipeline.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MediaPipelineId"))
    MediaCapturePipeline.add_member(:media_pipeline_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "MediaPipelineArn"))
    MediaCapturePipeline.add_member(:source_type, Shapes::ShapeRef.new(shape: MediaPipelineSourceType, location_name: "SourceType"))
    MediaCapturePipeline.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SourceArn"))
    MediaCapturePipeline.add_member(:status, Shapes::ShapeRef.new(shape: MediaPipelineStatus, location_name: "Status"))
    MediaCapturePipeline.add_member(:sink_type, Shapes::ShapeRef.new(shape: MediaPipelineSinkType, location_name: "SinkType"))
    MediaCapturePipeline.add_member(:sink_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SinkArn"))
    MediaCapturePipeline.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    MediaCapturePipeline.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    MediaCapturePipeline.add_member(:chime_sdk_meeting_configuration, Shapes::ShapeRef.new(shape: ChimeSdkMeetingConfiguration, location_name: "ChimeSdkMeetingConfiguration"))
    MediaCapturePipeline.struct_class = Types::MediaCapturePipeline

    MediaCapturePipelineSummary.add_member(:media_pipeline_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MediaPipelineId"))
    MediaCapturePipelineSummary.add_member(:media_pipeline_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "MediaPipelineArn"))
    MediaCapturePipelineSummary.struct_class = Types::MediaCapturePipelineSummary

    MediaCapturePipelineSummaryList.member = Shapes::ShapeRef.new(shape: MediaCapturePipelineSummary)

    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    NotFoundException.struct_class = Types::NotFoundException

    ResourceLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceLimitExceededException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    SelectedVideoStreams.add_member(:attendee_ids, Shapes::ShapeRef.new(shape: AttendeeIdList, location_name: "AttendeeIds"))
    SelectedVideoStreams.add_member(:external_user_ids, Shapes::ShapeRef.new(shape: ExternalUserIdList, location_name: "ExternalUserIds"))
    SelectedVideoStreams.struct_class = Types::SelectedVideoStreams

    ServiceFailureException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceFailureException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ServiceFailureException.struct_class = Types::ServiceFailureException

    ServiceUnavailableException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SourceConfiguration.add_member(:selected_video_streams, Shapes::ShapeRef.new(shape: SelectedVideoStreams, location_name: "SelectedVideoStreams"))
    SourceConfiguration.struct_class = Types::SourceConfiguration

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottledClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ThrottledClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottledClientException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ThrottledClientException.struct_class = Types::ThrottledClientException

    UnauthorizedClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    UnauthorizedClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnauthorizedClientException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UnauthorizedClientException.struct_class = Types::UnauthorizedClientException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    VideoArtifactsConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ArtifactsState, required: true, location_name: "State"))
    VideoArtifactsConfiguration.add_member(:mux_type, Shapes::ShapeRef.new(shape: VideoMuxType, location_name: "MuxType"))
    VideoArtifactsConfiguration.struct_class = Types::VideoArtifactsConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-07-15"

      api.metadata = {
        "apiVersion" => "2021-07-15",
        "endpointPrefix" => "media-pipelines-chime",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Chime SDK Media Pipelines",
        "serviceId" => "Chime SDK Media Pipelines",
        "signatureVersion" => "v4",
        "signingName" => "chime",
        "uid" => "chime-sdk-media-pipelines-2021-07-15",
      }

      api.add_operation(:create_media_capture_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMediaCapturePipeline"
        o.http_method = "POST"
        o.http_request_uri = "/sdk-media-capture-pipelines"
        o.input = Shapes::ShapeRef.new(shape: CreateMediaCapturePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMediaCapturePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_media_capture_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMediaCapturePipeline"
        o.http_method = "DELETE"
        o.http_request_uri = "/sdk-media-capture-pipelines/{mediaPipelineId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMediaCapturePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_media_capture_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMediaCapturePipeline"
        o.http_method = "GET"
        o.http_request_uri = "/sdk-media-capture-pipelines/{mediaPipelineId}"
        o.input = Shapes::ShapeRef.new(shape: GetMediaCapturePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMediaCapturePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_media_capture_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMediaCapturePipelines"
        o.http_method = "GET"
        o.http_request_uri = "/sdk-media-capture-pipelines"
        o.input = Shapes::ShapeRef.new(shape: ListMediaCapturePipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMediaCapturePipelinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=tag-resource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=untag-resource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)
    end

  end
end

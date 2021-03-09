# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1FaceAnnotation do
  @moduledoc """
  A face annotation object contains the results of face detection.

  ## Attributes

  *   `angerLikelihood` (*type:* `String.t`, *default:* `nil`) - Anger likelihood.
  *   `blurredLikelihood` (*type:* `String.t`, *default:* `nil`) - Blurred likelihood.
  *   `boundingPoly` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BoundingPoly.t`, *default:* `nil`) - The bounding polygon around the face. The coordinates of the bounding box are in the original image's scale. The bounding box is computed to "frame" the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and/or y coordinates may not be generated in the `BoundingPoly` (the polygon will be unbounded) if only a partial face appears in the image to be annotated.
  *   `detectionConfidence` (*type:* `number()`, *default:* `nil`) - Detection confidence. Range [0, 1].
  *   `fdBoundingPoly` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BoundingPoly.t`, *default:* `nil`) - The `fd_bounding_poly` bounding polygon is tighter than the `boundingPoly`, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the "amount of skin" visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the fd (face detection) prefix.
  *   `headwearLikelihood` (*type:* `String.t`, *default:* `nil`) - Headwear likelihood.
  *   `joyLikelihood` (*type:* `String.t`, *default:* `nil`) - Joy likelihood.
  *   `landmarkingConfidence` (*type:* `number()`, *default:* `nil`) - Face landmarking confidence. Range [0, 1].
  *   `landmarks` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark.t)`, *default:* `nil`) - Detected face landmarks.
  *   `panAngle` (*type:* `number()`, *default:* `nil`) - Yaw angle, which indicates the leftward/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180].
  *   `recognitionResult` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1FaceRecognitionResult.t)`, *default:* `nil`) - Additional recognition information. Only computed if image_context.face_recognition_params is provided, **and** a match is found to a Celebrity in the input CelebritySet. This field is sorted in order of decreasing confidence values.
  *   `rollAngle` (*type:* `number()`, *default:* `nil`) - Roll angle, which indicates the amount of clockwise/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180].
  *   `sorrowLikelihood` (*type:* `String.t`, *default:* `nil`) - Sorrow likelihood.
  *   `surpriseLikelihood` (*type:* `String.t`, *default:* `nil`) - Surprise likelihood.
  *   `tiltAngle` (*type:* `number()`, *default:* `nil`) - Pitch angle, which indicates the upwards/downwards angle that the face is pointing relative to the image's horizontal plane. Range [-180,180].
  *   `underExposedLikelihood` (*type:* `String.t`, *default:* `nil`) - Under-exposed likelihood.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :angerLikelihood => String.t() | nil,
          :blurredLikelihood => String.t() | nil,
          :boundingPoly =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BoundingPoly.t() | nil,
          :detectionConfidence => number() | nil,
          :fdBoundingPoly =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BoundingPoly.t() | nil,
          :headwearLikelihood => String.t() | nil,
          :joyLikelihood => String.t() | nil,
          :landmarkingConfidence => number() | nil,
          :landmarks =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark.t())
            | nil,
          :panAngle => number() | nil,
          :recognitionResult =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1FaceRecognitionResult.t())
            | nil,
          :rollAngle => number() | nil,
          :sorrowLikelihood => String.t() | nil,
          :surpriseLikelihood => String.t() | nil,
          :tiltAngle => number() | nil,
          :underExposedLikelihood => String.t() | nil
        }

  field(:angerLikelihood)
  field(:blurredLikelihood)
  field(:boundingPoly, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BoundingPoly)
  field(:detectionConfidence)
  field(:fdBoundingPoly, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1BoundingPoly)
  field(:headwearLikelihood)
  field(:joyLikelihood)
  field(:landmarkingConfidence)

  field(:landmarks,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1FaceAnnotationLandmark,
    type: :list
  )

  field(:panAngle)

  field(:recognitionResult,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1FaceRecognitionResult,
    type: :list
  )

  field(:rollAngle)
  field(:sorrowLikelihood)
  field(:surpriseLikelihood)
  field(:tiltAngle)
  field(:underExposedLikelihood)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1FaceAnnotation do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1FaceAnnotation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1FaceAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

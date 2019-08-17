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

defmodule GoogleApi.DFAReporting.V33.Model.FloodlightActivityPublisherDynamicTag do
  @moduledoc """
  Publisher Dynamic Tag

  ## Attributes

  *   `clickThrough` (*type:* `boolean()`, *default:* `nil`) - Whether this tag is applicable only for click-throughs.
  *   `directorySiteId` (*type:* `String.t`, *default:* `nil`) - Directory site ID of this dynamic tag. This is a write-only field that can be used as an alternative to the siteId field. When this resource is retrieved, only the siteId field will be populated.
  *   `dynamicTag` (*type:* `GoogleApi.DFAReporting.V33.Model.FloodlightActivityDynamicTag.t`, *default:* `nil`) - Dynamic floodlight tag.
  *   `siteId` (*type:* `String.t`, *default:* `nil`) - Site ID of this dynamic tag.
  *   `siteIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the site. This is a read-only, auto-generated field.
  *   `viewThrough` (*type:* `boolean()`, *default:* `nil`) - Whether this tag is applicable only for view-throughs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clickThrough => boolean(),
          :directorySiteId => String.t(),
          :dynamicTag => GoogleApi.DFAReporting.V33.Model.FloodlightActivityDynamicTag.t(),
          :siteId => String.t(),
          :siteIdDimensionValue => GoogleApi.DFAReporting.V33.Model.DimensionValue.t(),
          :viewThrough => boolean()
        }

  field(:clickThrough)
  field(:directorySiteId)
  field(:dynamicTag, as: GoogleApi.DFAReporting.V33.Model.FloodlightActivityDynamicTag)
  field(:siteId)
  field(:siteIdDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:viewThrough)
end

defimpl Poison.Decoder,
  for: GoogleApi.DFAReporting.V33.Model.FloodlightActivityPublisherDynamicTag do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.FloodlightActivityPublisherDynamicTag.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DFAReporting.V33.Model.FloodlightActivityPublisherDynamicTag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

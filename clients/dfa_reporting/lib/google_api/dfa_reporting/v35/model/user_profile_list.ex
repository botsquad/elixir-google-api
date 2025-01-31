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

defmodule GoogleApi.DFAReporting.V35.Model.UserProfileList do
  @moduledoc """
  Represents the list of user profiles.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of this resource.
  *   `items` (*type:* `list(GoogleApi.DFAReporting.V35.Model.UserProfile.t)`, *default:* `nil`) - The user profiles returned in this response.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#userProfileList".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :items => list(GoogleApi.DFAReporting.V35.Model.UserProfile.t()) | nil,
          :kind => String.t() | nil
        }

  field(:etag)
  field(:items, as: GoogleApi.DFAReporting.V35.Model.UserProfile, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.UserProfileList do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.UserProfileList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.UserProfileList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.DFAReporting.V33.Model.CreativeFieldsListResponse do
  @moduledoc """
  Creative Field List Response

  ## Attributes

  *   `creativeFields` (*type:* `list(GoogleApi.DFAReporting.V33.Model.CreativeField.t)`, *default:* `nil`) - Creative field collection.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#creativeFieldsListResponse`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#creativeFieldsListResponse".
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Pagination token to be used for the next list operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creativeFields => list(GoogleApi.DFAReporting.V33.Model.CreativeField.t()),
          :kind => String.t(),
          :nextPageToken => String.t()
        }

  field(:creativeFields, as: GoogleApi.DFAReporting.V33.Model.CreativeField, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.CreativeFieldsListResponse do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.CreativeFieldsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.CreativeFieldsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

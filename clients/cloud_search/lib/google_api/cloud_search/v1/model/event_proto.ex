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

defmodule GoogleApi.CloudSearch.V1.Model.EventProto do
  @moduledoc """
  Represents the invitees or other users associated with a Google+ Event (see http://goto/events-backend-design).

  ## Attributes

  *   `eventId` (*type:* `String.t`, *default:* `nil`) - Event IDs consist of alphanumeric characters and colons. Currently required.
  *   `memberType` (*type:* `integer()`, *default:* `nil`) - The type of Event members to consider, e.g. "all members" vs. "owners" vs. "admins". These are defined by legacy_relation_id values in social.graph.storage.EdgeTypeEnum.EdgeType enum options in social/graph/storage/proto/id.proto. See event.pb (defined in production/config/cdd/socialgraph/mixer_config/prod/node_type_config) for all valid edge types associated with event. Currently required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventId => String.t() | nil,
          :memberType => integer() | nil
        }

  field(:eventId)
  field(:memberType)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.EventProto do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.EventProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.EventProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

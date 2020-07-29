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

defmodule GoogleApi.ServiceManagement.V1.Model.ResourceReference do
  @moduledoc """
  Defines a proto annotation that describes a string field that refers to
  an API resource.

  ## Attributes

  *   `childType` (*type:* `String.t`, *default:* `nil`) - The resource type of a child collection that the annotated field
      references. This is useful for annotating the `parent` field that
      doesn't have a fixed resource type.

      Example:

          message ListLogEntriesRequest {
            string parent = 1 [(google.api.resource_reference) = {
              child_type: "logging.googleapis.com/LogEntry"
            };
          }
  *   `type` (*type:* `String.t`, *default:* `nil`) - The resource type that the annotated field references.

      Example:

          message Subscription {
            string topic = 2 [(google.api.resource_reference) = {
              type: "pubsub.googleapis.com/Topic"
            }];
          }

      Occasionally, a field may reference an arbitrary resource. In this case,
      APIs use the special value * in their resource reference.

      Example:

          message GetIamPolicyRequest {
            string resource = 2 [(google.api.resource_reference) = {
              type: "*"
            }];
          }
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :childType => String.t(),
          :type => String.t()
        }

  field(:childType)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.ResourceReference do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.ResourceReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.ResourceReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

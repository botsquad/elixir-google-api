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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ConfigurationCondition do
  @moduledoc """
  ConfigurationCondition defines a readiness condition for a Configuration.

  ## Attributes

  *   `lastTransitionTime` (*type:* `DateTime.t`, *default:* `nil`) - Last time the condition transitioned from one status to another. +optional
  *   `message` (*type:* `String.t`, *default:* `nil`) - Human-readable message indicating details about last transition. +optional
  *   `reason` (*type:* `String.t`, *default:* `nil`) - One-word CamelCase reason for the condition's last transition. +optional
  *   `severity` (*type:* `String.t`, *default:* `nil`) - How to interpret failures of this condition, one of Error, Warning, Info +optional
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the condition, one of True, False, Unknown.
  *   `type` (*type:* `String.t`, *default:* `nil`) - ConfigurationConditionType is used to communicate the status of the reconciliation process. See also: https://github.com/knative/serving/blob/master/docs/spec/errors.md#error-conditions-and-reporting Types include:"Ready"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lastTransitionTime => DateTime.t() | nil,
          :message => String.t() | nil,
          :reason => String.t() | nil,
          :severity => String.t() | nil,
          :status => String.t() | nil,
          :type => String.t() | nil
        }

  field(:lastTransitionTime, as: DateTime)
  field(:message)
  field(:reason)
  field(:severity)
  field(:status)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ConfigurationCondition do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ConfigurationCondition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ConfigurationCondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

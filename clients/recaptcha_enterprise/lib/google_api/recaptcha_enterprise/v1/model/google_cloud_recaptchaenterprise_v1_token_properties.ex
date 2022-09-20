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

defmodule GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TokenProperties do
  @moduledoc """


  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Action name provided at token generation.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp corresponding to the generation of the token.
  *   `hostname` (*type:* `String.t`, *default:* `nil`) - The hostname of the page on which the token was generated (Web keys only).
  *   `invalidReason` (*type:* `String.t`, *default:* `nil`) - Reason associated with the response when valid = false.
  *   `valid` (*type:* `boolean()`, *default:* `nil`) - Whether the provided user response token is valid. When valid = false, the reason could be specified in invalid_reason or it could also be due to a user failing to solve a challenge or a sitekey mismatch (i.e the sitekey used to generate the token was different than the one specified in the assessment).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :hostname => String.t() | nil,
          :invalidReason => String.t() | nil,
          :valid => boolean() | nil
        }

  field(:action)
  field(:createTime, as: DateTime)
  field(:hostname)
  field(:invalidReason)
  field(:valid)
end

defimpl Poison.Decoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TokenProperties do
  def decode(value, options) do
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TokenProperties.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TokenProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

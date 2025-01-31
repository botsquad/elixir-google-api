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

defmodule GoogleApi.DFAReporting.V35.Model.AccountActiveAdSummary do
  @moduledoc """
  Gets a summary of active ads in an account.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - ID of the account.
  *   `activeAds` (*type:* `String.t`, *default:* `nil`) - Ads that have been activated for the account
  *   `activeAdsLimitTier` (*type:* `String.t`, *default:* `nil`) - Maximum number of active ads allowed for the account.
  *   `availableAds` (*type:* `String.t`, *default:* `nil`) - Ads that can be activated for the account.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#accountActiveAdSummary".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :activeAds => String.t() | nil,
          :activeAdsLimitTier => String.t() | nil,
          :availableAds => String.t() | nil,
          :kind => String.t() | nil
        }

  field(:accountId)
  field(:activeAds)
  field(:activeAdsLimitTier)
  field(:availableAds)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.AccountActiveAdSummary do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.AccountActiveAdSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.AccountActiveAdSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

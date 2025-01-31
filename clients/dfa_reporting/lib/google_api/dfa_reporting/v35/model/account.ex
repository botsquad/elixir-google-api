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

defmodule GoogleApi.DFAReporting.V35.Model.Account do
  @moduledoc """
  Contains properties of a Campaign Manager account.

  ## Attributes

  *   `accountPermissionIds` (*type:* `list(String.t)`, *default:* `nil`) - Account permissions assigned to this account.
  *   `accountProfile` (*type:* `String.t`, *default:* `nil`) - Profile for this account. This is a read-only field that can be left blank.
  *   `active` (*type:* `boolean()`, *default:* `nil`) - Whether this account is active.
  *   `activeAdsLimitTier` (*type:* `String.t`, *default:* `nil`) - Maximum number of active ads allowed for this account.
  *   `activeViewOptOut` (*type:* `boolean()`, *default:* `nil`) - Whether to serve creatives with Active View tags. If disabled, viewability data will not be available for any impressions.
  *   `availablePermissionIds` (*type:* `list(String.t)`, *default:* `nil`) - User role permissions available to the user roles of this account.
  *   `countryId` (*type:* `String.t`, *default:* `nil`) - ID of the country associated with this account.
  *   `currencyId` (*type:* `String.t`, *default:* `nil`) - ID of currency associated with this account. This is a required field. Acceptable values are: - "1" for USD - "2" for GBP - "3" for ESP - "4" for SEK - "5" for CAD - "6" for JPY - "7" for DEM - "8" for AUD - "9" for FRF - "10" for ITL - "11" for DKK - "12" for NOK - "13" for FIM - "14" for ZAR - "15" for IEP - "16" for NLG - "17" for EUR - "18" for KRW - "19" for TWD - "20" for SGD - "21" for CNY - "22" for HKD - "23" for NZD - "24" for MYR - "25" for BRL - "26" for PTE - "28" for CLP - "29" for TRY - "30" for ARS - "31" for PEN - "32" for ILS - "33" for CHF - "34" for VEF - "35" for COP - "36" for GTQ - "37" for PLN - "39" for INR - "40" for THB - "41" for IDR - "42" for CZK - "43" for RON - "44" for HUF - "45" for RUB - "46" for AED - "47" for BGN - "48" for HRK - "49" for MXN - "50" for NGN - "51" for EGP 
  *   `defaultCreativeSizeId` (*type:* `String.t`, *default:* `nil`) - Default placement dimensions for this account.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of this account.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this account. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#account".
  *   `locale` (*type:* `String.t`, *default:* `nil`) - Locale of this account. Acceptable values are: - "cs" (Czech) - "de" (German) - "en" (English) - "en-GB" (English United Kingdom) - "es" (Spanish) - "fr" (French) - "it" (Italian) - "ja" (Japanese) - "ko" (Korean) - "pl" (Polish) - "pt-BR" (Portuguese Brazil) - "ru" (Russian) - "sv" (Swedish) - "tr" (Turkish) - "zh-CN" (Chinese Simplified) - "zh-TW" (Chinese Traditional) 
  *   `maximumImageSize` (*type:* `String.t`, *default:* `nil`) - Maximum image size allowed for this account, in kilobytes. Value must be greater than or equal to 1.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this account. This is a required field, and must be less than 128 characters long and be globally unique.
  *   `nielsenOcrEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether campaigns created in this account will be enabled for Nielsen OCR reach ratings by default.
  *   `reportsConfiguration` (*type:* `GoogleApi.DFAReporting.V35.Model.ReportsConfiguration.t`, *default:* `nil`) - Reporting configuration of this account.
  *   `shareReportsWithTwitter` (*type:* `boolean()`, *default:* `nil`) - Share Path to Conversion reports with Twitter.
  *   `teaserSizeLimit` (*type:* `String.t`, *default:* `nil`) - File size limit in kilobytes of Rich Media teaser creatives. Acceptable values are 1 to 10240, inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountPermissionIds => list(String.t()) | nil,
          :accountProfile => String.t() | nil,
          :active => boolean() | nil,
          :activeAdsLimitTier => String.t() | nil,
          :activeViewOptOut => boolean() | nil,
          :availablePermissionIds => list(String.t()) | nil,
          :countryId => String.t() | nil,
          :currencyId => String.t() | nil,
          :defaultCreativeSizeId => String.t() | nil,
          :description => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :locale => String.t() | nil,
          :maximumImageSize => String.t() | nil,
          :name => String.t() | nil,
          :nielsenOcrEnabled => boolean() | nil,
          :reportsConfiguration =>
            GoogleApi.DFAReporting.V35.Model.ReportsConfiguration.t() | nil,
          :shareReportsWithTwitter => boolean() | nil,
          :teaserSizeLimit => String.t() | nil
        }

  field(:accountPermissionIds, type: :list)
  field(:accountProfile)
  field(:active)
  field(:activeAdsLimitTier)
  field(:activeViewOptOut)
  field(:availablePermissionIds, type: :list)
  field(:countryId)
  field(:currencyId)
  field(:defaultCreativeSizeId)
  field(:description)
  field(:id)
  field(:kind)
  field(:locale)
  field(:maximumImageSize)
  field(:name)
  field(:nielsenOcrEnabled)
  field(:reportsConfiguration, as: GoogleApi.DFAReporting.V35.Model.ReportsConfiguration)
  field(:shareReportsWithTwitter)
  field(:teaserSizeLimit)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.Account do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.Account.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.Account do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

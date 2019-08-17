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

defmodule GoogleApi.DFAReporting.V33.Model.ReportPathToConversionCriteriaReportProperties do
  @moduledoc """
  The properties of the report.

  ## Attributes

  *   `clicksLookbackWindow` (*type:* `integer()`, *default:* `nil`) - DFA checks to see if a click interaction occurred within the specified period of time before a conversion. By default the value is pulled from Floodlight or you can manually enter a custom value. Valid values: 1-90.
  *   `impressionsLookbackWindow` (*type:* `integer()`, *default:* `nil`) - DFA checks to see if an impression interaction occurred within the specified period of time before a conversion. By default the value is pulled from Floodlight or you can manually enter a custom value. Valid values: 1-90.
  *   `includeAttributedIPConversions` (*type:* `boolean()`, *default:* `nil`) - Deprecated: has no effect.
  *   `includeUnattributedCookieConversions` (*type:* `boolean()`, *default:* `nil`) - Include conversions of users with a DoubleClick cookie but without an exposure. That means the user did not click or see an ad from the advertiser within the Floodlight group, or that the interaction happened outside the lookback window.
  *   `includeUnattributedIPConversions` (*type:* `boolean()`, *default:* `nil`) - Include conversions that have no associated cookies and no exposures. It’s therefore impossible to know how the user was exposed to your ads during the lookback window prior to a conversion.
  *   `maximumClickInteractions` (*type:* `integer()`, *default:* `nil`) - The maximum number of click interactions to include in the report. Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100 impressions). If another advertiser in your network is paying for E2C, you can have up to 5 total exposures per report.
  *   `maximumImpressionInteractions` (*type:* `integer()`, *default:* `nil`) - The maximum number of click interactions to include in the report. Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100 impressions). If another advertiser in your network is paying for E2C, you can have up to 5 total exposures per report.
  *   `maximumInteractionGap` (*type:* `integer()`, *default:* `nil`) - The maximum amount of time that can take place between interactions (clicks or impressions) by the same user. Valid values: 1-90.
  *   `pivotOnInteractionPath` (*type:* `boolean()`, *default:* `nil`) - Enable pivoting on interaction path.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clicksLookbackWindow => integer(),
          :impressionsLookbackWindow => integer(),
          :includeAttributedIPConversions => boolean(),
          :includeUnattributedCookieConversions => boolean(),
          :includeUnattributedIPConversions => boolean(),
          :maximumClickInteractions => integer(),
          :maximumImpressionInteractions => integer(),
          :maximumInteractionGap => integer(),
          :pivotOnInteractionPath => boolean()
        }

  field(:clicksLookbackWindow)
  field(:impressionsLookbackWindow)
  field(:includeAttributedIPConversions)
  field(:includeUnattributedCookieConversions)
  field(:includeUnattributedIPConversions)
  field(:maximumClickInteractions)
  field(:maximumImpressionInteractions)
  field(:maximumInteractionGap)
  field(:pivotOnInteractionPath)
end

defimpl Poison.Decoder,
  for: GoogleApi.DFAReporting.V33.Model.ReportPathToConversionCriteriaReportProperties do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.ReportPathToConversionCriteriaReportProperties.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DFAReporting.V33.Model.ReportPathToConversionCriteriaReportProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

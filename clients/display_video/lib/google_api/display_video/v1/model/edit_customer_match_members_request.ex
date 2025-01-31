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

defmodule GoogleApi.DisplayVideo.V1.Model.EditCustomerMatchMembersRequest do
  @moduledoc """
  Request message for FirstAndThirdPartyAudienceService.EditCustomerMatchMembers.

  ## Attributes

  *   `addedContactInfoList` (*type:* `GoogleApi.DisplayVideo.V1.Model.ContactInfoList.t`, *default:* `nil`) - Input only. A list of contact information to define the members to be added.
  *   `addedMobileDeviceIdList` (*type:* `GoogleApi.DisplayVideo.V1.Model.MobileDeviceIdList.t`, *default:* `nil`) - Input only. A list of mobile device IDs to define the members to be added.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the owner advertiser of the updated Customer Match FirstAndThirdPartyAudience.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addedContactInfoList => GoogleApi.DisplayVideo.V1.Model.ContactInfoList.t() | nil,
          :addedMobileDeviceIdList =>
            GoogleApi.DisplayVideo.V1.Model.MobileDeviceIdList.t() | nil,
          :advertiserId => String.t() | nil
        }

  field(:addedContactInfoList, as: GoogleApi.DisplayVideo.V1.Model.ContactInfoList)
  field(:addedMobileDeviceIdList, as: GoogleApi.DisplayVideo.V1.Model.MobileDeviceIdList)
  field(:advertiserId)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.EditCustomerMatchMembersRequest do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.EditCustomerMatchMembersRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.EditCustomerMatchMembersRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

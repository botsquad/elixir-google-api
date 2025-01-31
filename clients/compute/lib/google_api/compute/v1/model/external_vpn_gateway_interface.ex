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

defmodule GoogleApi.Compute.V1.Model.ExternalVpnGatewayInterface do
  @moduledoc """
  The interface for the external VPN gateway.

  ## Attributes

  *   `id` (*type:* `integer()`, *default:* `nil`) - The numeric ID of this interface. The allowed input values for this id for different redundancy types of external VPN gateway: - SINGLE_IP_INTERNALLY_REDUNDANT - 0 - TWO_IPS_REDUNDANCY - 0, 1 - FOUR_IPS_REDUNDANCY - 0, 1, 2, 3 
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - IP address of the interface in the external VPN gateway. Only IPv4 is supported. This IP address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :ipAddress => String.t() | nil
        }

  field(:id)
  field(:ipAddress)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ExternalVpnGatewayInterface do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ExternalVpnGatewayInterface.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ExternalVpnGatewayInterface do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PurchaseTransaction do
  @moduledoc """
  A transaction represents the entire purchase transaction.

  ## Attributes

  *   `cost` (*type:* `number()`, *default:* `nil`) - All the costs associated with the products. These can be manufacturing costs, shipping expenses not borne by the end user, or any other costs, such that: * Profit = revenue - tax - cost
  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - Required. Currency code. Use three-character ISO-4217 code.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The transaction ID with a length limit of 128 characters.
  *   `revenue` (*type:* `number()`, *default:* `nil`) - Required. Total non-zero revenue or grand total associated with the transaction. This value include shipping, tax, or other adjustments to total revenue that you want to include as part of your revenue calculations.
  *   `tax` (*type:* `number()`, *default:* `nil`) - All the taxes associated with the transaction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cost => number() | nil,
          :currencyCode => String.t() | nil,
          :id => String.t() | nil,
          :revenue => number() | nil,
          :tax => number() | nil
        }

  field(:cost)
  field(:currencyCode)
  field(:id)
  field(:revenue)
  field(:tax)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PurchaseTransaction do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PurchaseTransaction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PurchaseTransaction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

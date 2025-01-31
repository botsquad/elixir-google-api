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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LargeCustomDictionaryConfig do
  @moduledoc """
  Configuration for a custom dictionary created from a data source of any size up to the maximum size defined in the [limits](https://cloud.google.com/dlp/limits) page. The artifacts of dictionary creation are stored in the specified Cloud Storage location. Consider using `CustomInfoType.Dictionary` for smaller dictionaries that satisfy the size requirements.

  ## Attributes

  *   `bigQueryField` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryField.t`, *default:* `nil`) - Field in a BigQuery table where each cell represents a dictionary phrase.
  *   `cloudStorageFileSet` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageFileSet.t`, *default:* `nil`) - Set of files containing newline-delimited lists of dictionary phrases.
  *   `outputPath` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStoragePath.t`, *default:* `nil`) - Location to store dictionary artifacts in Cloud Storage. These files will only be accessible by project owners and the DLP API. If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigQueryField => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryField.t() | nil,
          :cloudStorageFileSet =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageFileSet.t() | nil,
          :outputPath => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStoragePath.t() | nil
        }

  field(:bigQueryField, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryField)
  field(:cloudStorageFileSet, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageFileSet)
  field(:outputPath, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStoragePath)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LargeCustomDictionaryConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LargeCustomDictionaryConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LargeCustomDictionaryConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.CloudBuild.V1.Model.WorkerPool do
  @moduledoc """
  Configuration for a `WorkerPool`. Cloud Build owns and maintains a pool of workers for general use and have no access to a project's private network. By default, builds submitted to Cloud Build will use a worker from this pool. If your build needs access to resources on a private network, create and use a `WorkerPool` to run your builds. Private `WorkerPool`s give your builds access to any single VPC network that you administer, including any on-prem resources connected to that VPC network. For an overview of private pools, see [Private pools overview](https://cloud.google.com/build/docs/private-pools/private-pools-overview).

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the request to create the `WorkerPool` was received.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the request to delete the `WorkerPool` was received.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. Checksum computed by the server. May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the `WorkerPool`, with format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The value of `{worker_pool}` is provided by `worker_pool_id` in `CreateWorkerPool` request and the value of `{location}` is determined by the endpoint accessed.
  *   `privatePoolV1Config` (*type:* `GoogleApi.CloudBuild.V1.Model.PrivatePoolV1Config.t`, *default:* `nil`) - Legacy Private Pool configuration.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. `WorkerPool` state.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. A unique identifier for the `WorkerPool`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the request to update the `WorkerPool` was received.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :etag => String.t() | nil,
          :name => String.t() | nil,
          :privatePoolV1Config => GoogleApi.CloudBuild.V1.Model.PrivatePoolV1Config.t() | nil,
          :state => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:displayName)
  field(:etag)
  field(:name)
  field(:privatePoolV1Config, as: GoogleApi.CloudBuild.V1.Model.PrivatePoolV1Config)
  field(:state)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.WorkerPool do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.WorkerPool.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.WorkerPool do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

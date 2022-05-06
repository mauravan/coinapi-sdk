# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule EMS-ManagedCloudRESTAPI.Api.Location do
  @moduledoc """
  API calls for all endpoints tagged `Location`.
  """

  alias EMS-ManagedCloudRESTAPI.Connection
  import EMS-ManagedCloudRESTAPI.RequestBuilder


  @doc """
  Get site locations
  This endpoint providing information about the server site locations supported in the EMS API.

  ## Parameters

  - connection (EMS-ManagedCloudRESTAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Locations{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec locations(Tesla.Env.client, keyword()) :: {:ok, list(EMS-ManagedCloudRESTAPI.Model.Locations.t)} | {:error, Tesla.Env.t}
  def locations(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v1/locations")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%EMS-ManagedCloudRESTAPI.Model.Locations{}]}
    ])
  end
end
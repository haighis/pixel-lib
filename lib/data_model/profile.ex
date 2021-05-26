defmodule DataModel.Profile do
  @moduledoc """
  A struct representing a Profile.
  """
    @enforce_keys [:fullname]
    defstruct fullname: nil, age: nil, date_created: "1 May 2021"
    @type t :: %DataModel.Profile{fullname: String.t, age: non_neg_integer}
end
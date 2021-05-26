defmodule DataModel.Friend do
  @moduledoc """
  A struct representing a Friend.
  """
    @enforce_keys [:fullname]
    defstruct fullname: nil, age: nil, date_created: "1 May 2021"
    @type t :: %DataModel.Friend{fullname: String.t, age: non_neg_integer}
end
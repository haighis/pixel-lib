# Functional Core
# A Profile libary that is developed as a functional core.
# The functional core is a library implementation.
# The functional core should work on data that’s validated and safe. It should be predictable, so it avoids side effects.
# A functional core is means to easily reason about the application core business logic that is the same pattern
# created by James Edward Gray and Bruce A. Tate found in the book "Designing Elixir Systems with OTP".
#
# Design
# The Profile lib uses:
#
# Usage
# newmap = Profile.add(%{},%DataModel.Profile{fullname: "kk", age: 35})
#
# Profile Data Model
# Fields
defmodule Profile do
  @profile_name :profile
  def add(profiles, p) do
    the_items = Map.put(profiles, @profile_name, p)
    the_items
  end
end

# Functional Core
# A Friend libary that is developed as a functional core.
# The functional core is a library implementation.
# The functional core should work on data that’s validated and safe. It should be predictable, so it avoids side effects.
# A functional core is means to easily reason about the application core business logic that is the same pattern
# created by James Edward Gray and Bruce A. Tate found in the book "Designing Elixir Systems with OTP".
#
# Design
# The Friend lib uses:
# - Slugify
# - 
# Usage
# newmap = Friends.add_friend %{}, %{fullname: "John", age: 34}
# newmap = Friends.add_friend newmap, %{fullname: "Janis"}
#
# Friends Data Model
# Fields
defmodule Friends do
  def add_friend(friends, f) do 
    slugged_key = Slug.slugify(f.fullname, separator: ?_)
    #new_item = f #%{:fullname => a.fullname, :age => a.age, date_created: a.date_created}
    the_items = Map.put(friends, String.to_atom(slugged_key), f)
    the_items
  end
end

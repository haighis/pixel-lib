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
# newmap = Friends.add_friend %{}, %DataModel.Friend{fullname: "John"}
# newmap = Friends.add_friend newmap, %DataModel.Friend{fullname: "Janis"}
#
# Friends Data Model
# Fields
defmodule Friends do
  def add_friend(friends, %DataModel.Friend{} = f) do
    # IO.inspect a # key: key,
    slugged_key = Slug.slugify(f.fullname, separator: ?_)
    new_item = f #%{:fullname => a.fullname, :age => a.age, date_created: a.date_created}
    the_items = Map.put(friends, String.to_atom(slugged_key), new_item)
    # IO.inspect the_items
    the_items
  end
end

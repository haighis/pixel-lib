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
# newmap = Friends.add_friend %{}, %{fullname: "John", age: 34, userkey: "john"}
# newmap = Friends.add_friend newmap, %{fullname: "Janis"}
# newmap = Friends.add_friend %{:friends [%{userkey: :a, fullname: "John", age: 34},%{userkey: :b, fullname: "Johna", age: 34}] }, %{fullname: "John", age: 34} 

# add_friend2 docs
# newnewnew = Friends.add_friend2(%{friends: %{}},%{fullname: "a", age: 34, userkey: "a"})
# newnewnew = Friends.add_friend2(newnewnew,%{fullname: "b", age: 34, userkey: "b"})
# Friends Data Model
# Fields
defmodule Friends do
  def add_friend(friends, f) do 
    the_items = Map.put(friends, String.to_atom(f.userkey), f)
    the_items
  end

  def add_friend2(friends, f) do 
    inner = friends.friends
    inner = Map.put(inner,String.to_atom(f.userkey), f)
    outer = Map.put(friends,:friends,inner)
    #Map.put(friends, String.to_atom(f.userkey), f)
    outer
  end
  # newnew = Map.put(newmap,:friends,
  # Slug code 
  #slugged_key = Slug.slugify(f.fullname, separator: ?_)
    #the_items = Map.put(friends, String.to_atom(slugged_key), f)

    #new_friend = Map.put(f, :userkey, slugged_key)

  # def add_friend2(newfriends, f) do 
  #   slugged_key = Slug.slugify(f.fullname, separator: ?_)
    
  #   initial = %{friends: %{count: 1}}

  #   existing_friends = Map.fetch(newfriends, :friends)
  #   #new_item = f #%{:fullname => a.fullname, :age => a.age, date_created: a.date_created}
  #   the_items = Map.put(existing_friends, String.to_atom(slugged_key), f)
  #   friends_map = %{newfriends | friends: the_items}
  #   friends_map
  # end
end

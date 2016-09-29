full_name = fn 
	(nil, last_name) -> "Mr. #{last_name}"
	(first_name, last_name) -> "#{first_name} #{last_name}"
	
end

IO.puts full_name.("Jared", "Blitzstein")
IO.puts full_name.(nil, "Blitzstein")
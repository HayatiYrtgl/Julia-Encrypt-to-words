### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ c6d95c0e-5030-11ee-2414-354600f0e1d3
# Encryptor

# ╔═╡ 8564f0ec-c651-4335-bc4c-c0c978b77413
alphabet = "abcdefghijklmnoprstuvyzxqw .,!?1234567890"


# ╔═╡ 0c9e7f24-b576-4eb2-b7cb-bd8ded859f89
# parse the alphabet
collected = collect(alphabet)

# ╔═╡ c4bdb08d-9381-4de7-b821-c62ba3c43d4e
dictionary = Dict()

# ╔═╡ de4f0b44-e2f9-4789-9740-13a6dc22bf09
# with for loop zip 
for i in range(1, length(collected))
	# get index
	key = collected[i]
	value = rand(1:100000)
	dictionary[key] = value
end

# ╔═╡ e43fceca-58d9-4db7-ab1a-a82c15479d5c
# check dictionary
dictionary

# ╔═╡ 60577f31-536a-43d4-86a5-77f1d4ee72e6
# get input from user
user_input = readline()

# ╔═╡ ad291444-dea8-4514-84d3-1c15a4569661
# parse user input
collected_user_input = collect(user_input)

# ╔═╡ 367f19c4-58b1-41b7-b847-2e97d0571ea7
# with for loop encrypt
begin
	string_to_encrypt = ""
	for enc in collected_user_input
		println(string(dictionary[enc]))
		string_to_encrypt *= string(dictionary[enc])
		string_to_encrypt *= " "
	end
end

# ╔═╡ 39c52151-8c94-4038-9a2a-abf6f1bde05c
println(string_to_encrypt)

# ╔═╡ Cell order:
# ╠═c6d95c0e-5030-11ee-2414-354600f0e1d3
# ╠═8564f0ec-c651-4335-bc4c-c0c978b77413
# ╠═0c9e7f24-b576-4eb2-b7cb-bd8ded859f89
# ╠═c4bdb08d-9381-4de7-b821-c62ba3c43d4e
# ╠═de4f0b44-e2f9-4789-9740-13a6dc22bf09
# ╠═e43fceca-58d9-4db7-ab1a-a82c15479d5c
# ╠═60577f31-536a-43d4-86a5-77f1d4ee72e6
# ╠═ad291444-dea8-4514-84d3-1c15a4569661
# ╠═367f19c4-58b1-41b7-b847-2e97d0571ea7
# ╠═39c52151-8c94-4038-9a2a-abf6f1bde05c

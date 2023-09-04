### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ a213c11d-857d-46b0-a273-3617ac241681
begin
import Pkg
Pkg.activate()
using PlutoUI
TableOfContents()
end

# ╔═╡ dad33f10-4afe-11ee-1f02-9bc86ea17c2d
md"# 1.2"

# ╔═╡ c316ba7d-d869-45b3-bf3d-946b35b4a97b
md"## a"

# ╔═╡ 7e6e62e8-260f-4daf-9bc7-2ea9b7eaa7c3
l10_x=rand(10)

# ╔═╡ d52c509b-ab43-4feb-9f68-e32e8de4354a
e₅=[zeros(4) ;1;zeros(5)]

# ╔═╡ 9e882b90-8b00-4d1f-9bd8-42ef4ab38222
begin
	the_5th=e₅'*l10_x
end

# ╔═╡ 348e31b1-b0fd-403b-b1de-ddfd77a84fa8
md"## b"

# ╔═╡ 6f5fd6d9-4a29-445d-9489-68794b46884e
l3_x=rand(3)

# ╔═╡ fd336c37-128b-43e1-85d6-eac8be6d2335
[0.3 0.4 0.3]*l3_x

# ╔═╡ Cell order:
# ╠═a213c11d-857d-46b0-a273-3617ac241681
# ╟─dad33f10-4afe-11ee-1f02-9bc86ea17c2d
# ╠═c316ba7d-d869-45b3-bf3d-946b35b4a97b
# ╠═7e6e62e8-260f-4daf-9bc7-2ea9b7eaa7c3
# ╠═d52c509b-ab43-4feb-9f68-e32e8de4354a
# ╠═9e882b90-8b00-4d1f-9bd8-42ef4ab38222
# ╠═348e31b1-b0fd-403b-b1de-ddfd77a84fa8
# ╠═6f5fd6d9-4a29-445d-9489-68794b46884e
# ╠═fd336c37-128b-43e1-85d6-eac8be6d2335

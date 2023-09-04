### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 83b78118-cba1-4ce7-8ad5-1e662ad7e585
begin
import Pkg
Pkg.activate()
using LinearAlgebra,SparseArrays,VMLS,Plots
using PlutoUI
TableOfContents()
end

# ╔═╡ 3edbe923-af62-4fa5-84b9-d1c24b544fdf
md"# Vectors"

# ╔═╡ 3bdc5575-a242-42dc-8300-8f27901100d9
md"## Create vectors"

# ╔═╡ 371beb64-d5ff-43f5-a9d1-70f5b00a8688
let
	x=[1,2,3,4]
end

# ╔═╡ a1e816b8-6146-4707-a124-45c2cd3664bb
let
	x=[4;3;2;1]
	@info typeof(x)
end

# ╔═╡ 4e315a9f-a8eb-4a00-9926-2d05ac021108
md"`;` or `,` indicates next row"

# ╔═╡ 15eaec1f-2738-4571-814d-2d167b601056
md"empty space means next col"

# ╔═╡ fe0b3887-dd66-4452-8341-2ebb0fc19a4d
[2 3 1 2]

# ╔═╡ 24a9ab60-b350-41f9-8536-cc0cbe33aead
md"## Number of elements in vector"

# ╔═╡ 05e3290c-d061-4a91-926d-b06352b05db1
md"## Special Vectors"

# ╔═╡ 44488fed-2d9c-41fa-9af9-6b946f02c0ff
md"### zero vectors"

# ╔═╡ 999d1e63-78d6-42ca-8340-cbd61145ed36
zeros(3)

# ╔═╡ c7ac2470-026c-4e62-a7a4-3ad18561ad84
md"### unit vectors"

# ╔═╡ e7386111-2521-46de-a381-ceabb777eedf
unit_vector(i,n)=[zeros(i-1);1;zeros(n-i)]

# ╔═╡ 6b9a4511-2088-40c6-ab73-74894c04b7cc
unit_vector(2,3)

# ╔═╡ e6d1613d-fd23-4a10-bce2-66605fe80bd2
md"### one vectors"

# ╔═╡ fee237ad-23ac-4c52-a31a-19f928a11af5
ones(4)

# ╔═╡ eff3283f-4648-4479-b58a-ebcab204936d
md"### rand vectors"

# ╔═╡ 2e04a102-a2e7-438a-a482-8f60d272a593
randn(100)

# ╔═╡ 58831bdc-a8b3-46e6-908c-00b58c386cd1
plot(randn(100),marker=:circle,title="normal distribution",legend=false)

# ╔═╡ 688661a5-197e-4222-a28d-17fa1c343b72
md"# Vector addition"

# ╔═╡ 5330e558-0f60-44f4-8674-f75405d1c1cf
[1 2 3] + [4 5 6]

# ╔═╡ af9f3056-ad62-4185-9146-2a1859af116e
md"# Scalar-vector multiplication"

# ╔═╡ ccd785cf-5534-4993-961c-83f8bebe7065


# ╔═╡ e311424c-bff8-42ba-b4e6-f7be1c4e6fea
md"# Inner product"

# ╔═╡ bd207645-4dbd-4101-9a51-8d710c1d1c7e
md"# Complexity of vector computations"

# ╔═╡ af884c56-02a0-4b82-b210-2565a2853295
x=[1,2,3,4]

# ╔═╡ d6f190ec-31b4-475a-bdb2-2c613df03923
let
	lengthOfX=length(x)
	md"""
	length of x is $lengthOfX
	"""
end

# ╔═╡ Cell order:
# ╠═83b78118-cba1-4ce7-8ad5-1e662ad7e585
# ╠═3edbe923-af62-4fa5-84b9-d1c24b544fdf
# ╠═3bdc5575-a242-42dc-8300-8f27901100d9
# ╠═371beb64-d5ff-43f5-a9d1-70f5b00a8688
# ╠═a1e816b8-6146-4707-a124-45c2cd3664bb
# ╟─4e315a9f-a8eb-4a00-9926-2d05ac021108
# ╟─15eaec1f-2738-4571-814d-2d167b601056
# ╠═fe0b3887-dd66-4452-8341-2ebb0fc19a4d
# ╟─24a9ab60-b350-41f9-8536-cc0cbe33aead
# ╠═d6f190ec-31b4-475a-bdb2-2c613df03923
# ╟─05e3290c-d061-4a91-926d-b06352b05db1
# ╠═44488fed-2d9c-41fa-9af9-6b946f02c0ff
# ╠═999d1e63-78d6-42ca-8340-cbd61145ed36
# ╟─c7ac2470-026c-4e62-a7a4-3ad18561ad84
# ╠═e7386111-2521-46de-a381-ceabb777eedf
# ╠═6b9a4511-2088-40c6-ab73-74894c04b7cc
# ╠═e6d1613d-fd23-4a10-bce2-66605fe80bd2
# ╠═fee237ad-23ac-4c52-a31a-19f928a11af5
# ╠═eff3283f-4648-4479-b58a-ebcab204936d
# ╠═2e04a102-a2e7-438a-a482-8f60d272a593
# ╠═58831bdc-a8b3-46e6-908c-00b58c386cd1
# ╠═688661a5-197e-4222-a28d-17fa1c343b72
# ╠═5330e558-0f60-44f4-8674-f75405d1c1cf
# ╠═af9f3056-ad62-4185-9146-2a1859af116e
# ╠═ccd785cf-5534-4993-961c-83f8bebe7065
# ╠═e311424c-bff8-42ba-b4e6-f7be1c4e6fea
# ╠═bd207645-4dbd-4101-9a51-8d710c1d1c7e
# ╠═af884c56-02a0-4b82-b210-2565a2853295

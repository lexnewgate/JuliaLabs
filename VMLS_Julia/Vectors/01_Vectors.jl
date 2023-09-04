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

# ╔═╡ d6f190ec-31b4-475a-bdb2-2c613df03923
let
	lengthOfX=length(x)
	md"""
	length of x is $lengthOfX
	"""
end

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

# ╔═╡ fa81e310-8d44-433c-aacb-b65979060f5e
1 .+[1 2 3]

# ╔═╡ f8fa94f4-7c0e-4ac1-8c8e-b692e5ca2ccc
2*[2 3 4]

# ╔═╡ af9f3056-ad62-4185-9146-2a1859af116e
md"# Scalar-vector multiplication"

# ╔═╡ 17a90490-ffca-4628-b5aa-9d7c7ffdba39
md"## elementwise"

# ╔═╡ 66ccfe60-b930-4f34-84f1-feeee3332727
md"### between vectors"

# ╔═╡ d7d73dfa-d90f-4938-ae06-6eee68df21ed
[4,5,6] ./ [1,2,3]

# ╔═╡ 5de2a466-2290-44ad-ad0b-d94012661de2
md"### between scalar and vectors"

# ╔═╡ 2786b001-c433-4a1c-b3e4-066ff53f6169
md"**Note: the order matters**"

# ╔═╡ 6ea7966a-45ed-411c-9beb-7d54e3d81763
2 .^ [1,2,3]

# ╔═╡ a47bb0de-9100-4976-ae9a-3d47f06aa336
[1,2,3].^ 2

# ╔═╡ f279b2a8-3b97-4f4c-a627-bd59ebff2dae
md"**assign scalar to vectors**"

# ╔═╡ 4be83108-c5df-4056-8e52-6445665cb2c1
vec_assignScalar=[i for i in 1:10]

# ╔═╡ 101fe5c7-3e99-4190-b617-481bb23ada0b
vec_assignScalar[3:5].=1

# ╔═╡ e6022950-17a1-45aa-836e-ae06e03c7e34
vec_assignScalar

# ╔═╡ 8b284f90-3a1d-4aa9-9b9e-dc9d957ac7bd
md"### bit vectors"

# ╔═╡ d957ac4d-15ec-41fb-95a7-4644f616457b
tenRandNumbers=rand(10)

# ╔═╡ 932bfece-e559-429b-9b8f-25ccc8266fb6
tenRandNumbers.>.5

# ╔═╡ 216eeef4-6af3-429f-bf88-b44c03f9cb83
md"**get filtered numbers**"

# ╔═╡ 9a63c495-325d-4bfe-8d69-ab988a5ea89d
tenRandNumbers[tenRandNumbers.>.5]

# ╔═╡ e311424c-bff8-42ba-b4e6-f7be1c4e6fea
md"# Inner product"

# ╔═╡ 3ef20c2b-83ec-49ea-9338-bf29b6945443
md"**$a^T$ can be typed as $a'$ in julia**"

# ╔═╡ cd1a297d-e82e-4ae9-be50-c40225bfa7c1
[1 3 5] * [2 5 7]'

# ╔═╡ bd207645-4dbd-4101-9a51-8d710c1d1c7e
md"# Complexity of vector computations"

# ╔═╡ 9bc95d21-46bc-45ac-8d61-94e9d78f7400
begin
	a=randn(10^8)
	b=randn(10^8)
	for i in 1:10
		@time a'*b
	end
end

# ╔═╡ d9acc095-e353-4cc6-af63-fb6bdd38a473
2*10^8/0.08

# ╔═╡ 1f17acd0-044a-450a-ba99-146f750d7481
2*10^8/10/8

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
# ╠═fa81e310-8d44-433c-aacb-b65979060f5e
# ╠═f8fa94f4-7c0e-4ac1-8c8e-b692e5ca2ccc
# ╠═af9f3056-ad62-4185-9146-2a1859af116e
# ╠═17a90490-ffca-4628-b5aa-9d7c7ffdba39
# ╠═66ccfe60-b930-4f34-84f1-feeee3332727
# ╠═d7d73dfa-d90f-4938-ae06-6eee68df21ed
# ╠═5de2a466-2290-44ad-ad0b-d94012661de2
# ╠═2786b001-c433-4a1c-b3e4-066ff53f6169
# ╠═6ea7966a-45ed-411c-9beb-7d54e3d81763
# ╠═a47bb0de-9100-4976-ae9a-3d47f06aa336
# ╠═f279b2a8-3b97-4f4c-a627-bd59ebff2dae
# ╠═4be83108-c5df-4056-8e52-6445665cb2c1
# ╠═101fe5c7-3e99-4190-b617-481bb23ada0b
# ╠═e6022950-17a1-45aa-836e-ae06e03c7e34
# ╠═8b284f90-3a1d-4aa9-9b9e-dc9d957ac7bd
# ╠═d957ac4d-15ec-41fb-95a7-4644f616457b
# ╠═932bfece-e559-429b-9b8f-25ccc8266fb6
# ╠═216eeef4-6af3-429f-bf88-b44c03f9cb83
# ╠═9a63c495-325d-4bfe-8d69-ab988a5ea89d
# ╠═e311424c-bff8-42ba-b4e6-f7be1c4e6fea
# ╠═3ef20c2b-83ec-49ea-9338-bf29b6945443
# ╠═cd1a297d-e82e-4ae9-be50-c40225bfa7c1
# ╠═bd207645-4dbd-4101-9a51-8d710c1d1c7e
# ╠═9bc95d21-46bc-45ac-8d61-94e9d78f7400
# ╠═d9acc095-e353-4cc6-af63-fb6bdd38a473
# ╠═1f17acd0-044a-450a-ba99-146f750d7481

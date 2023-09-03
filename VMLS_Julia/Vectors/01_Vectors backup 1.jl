### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 83b78118-cba1-4ce7-8ad5-1e662ad7e585
begin
import Pkg
Pkg.add(url="https://github.com/lexnewgate/VMLS.jl.git");
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

# ╔═╡ 688661a5-197e-4222-a28d-17fa1c343b72
md"# Vector addition"

# ╔═╡ af9f3056-ad62-4185-9146-2a1859af116e
md"# Scalar-vector multiplication"

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
# ╠═24a9ab60-b350-41f9-8536-cc0cbe33aead
# ╠═2bbc21cb-3c67-4dcd-b4ce-877189c50c4c
# ╠═d6f190ec-31b4-475a-bdb2-2c613df03923
# ╠═688661a5-197e-4222-a28d-17fa1c343b72
# ╠═af9f3056-ad62-4185-9146-2a1859af116e
# ╠═e311424c-bff8-42ba-b4e6-f7be1c4e6fea
# ╠═bd207645-4dbd-4101-9a51-8d710c1d1c7e
# ╠═af884c56-02a0-4b82-b210-2565a2853295

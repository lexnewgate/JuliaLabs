### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 9e072c50-4b93-11ee-2ae8-a3526d0c1474
begin
import Pkg
Pkg.activate()
using LinearAlgebra,SparseArrays,VMLS,Plots
using PlutoUI
TableOfContents()
end

# ╔═╡ 6d065cf0-07a4-4c2c-b001-24d8a2fba00b
f(x)= x[1]+exp(x[2]-x[1])

# ╔═╡ 8c533bce-e0cd-4f6f-8fc0-691ded0edfa0
exp(1)

# ╔═╡ Cell order:
# ╠═9e072c50-4b93-11ee-2ae8-a3526d0c1474
# ╠═6d065cf0-07a4-4c2c-b001-24d8a2fba00b
# ╠═8c533bce-e0cd-4f6f-8fc0-691ded0edfa0

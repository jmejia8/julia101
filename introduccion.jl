### A Pluto.jl notebook ###
# v0.12.4

using Markdown
using InteractiveUtils

# ╔═╡ 3b511ffe-160e-11eb-2dfe-a9383426f0d6
using Plots; plotly()

# ╔═╡ 3e9659c2-15bc-11eb-3831-43c0466df092
md"""
# Introducción a Julia

Espero que les guste este tutorial.
"""

# ╔═╡ 77d2834a-15b3-11eb-39c0-b31321d4a0d7

md"""
## Variables

Puedes declarar valiables de la siguiente forma:

Nombres explícitos:
```julia
número_entero = 1
número_flotante = 1.0 # Float64
ángulo = 3.1416
```

Unicode:
```julia
α = 1
β = 1.0
θ = 3.1416
```
Puedes sacar tales símbolos mediante  `\<simbolo><tab>`, por ejemplo para obtener el símbolo α, `\alpha` y luego presionas la tecla tab.

Emojis (no lo haga compa):

```julia
👽 = 666
🍎 = 777
```

Los **tipos de datos** en Julia son importantes y Julia los infiere cuando defines una variables.

"""

# ╔═╡ a197ee5e-15b3-11eb-051f-11a3c0c94ad0
a = 1

# ╔═╡ a7dac908-15b3-11eb-2dad-1db1cdd77935
b = 1.0

# ╔═╡ 3bedd6cc-15c2-11eb-03cd-234c909e223f
md"### Números aleatorio

- `rand` Uniformemente distribuidos.

- `randn` Distribuidos siguiendo una dist. normal estándar
"

# ╔═╡ 4849a004-15c2-11eb-09e3-9723f1cd6ee3
u = rand()

# ╔═╡ 86a5600e-15c2-11eb-3f9e-0b893a8ea59b
r = randn()

# ╔═╡ 228538f6-15c2-11eb-3b76-19ca6c24dcbd
md"## Vectores"

# ╔═╡ cf46f162-15bb-11eb-191b-53c0d0bc7820
v = [1,2,4]

# ╔═╡ 4a246586-15c1-11eb-2826-b71865bbd2f5
w = [1,2,4.0]

# ╔═╡ 4a662980-15c1-11eb-0658-b9718c25c1a9
w + v

# ╔═╡ 9e5ed012-15c3-11eb-1e06-f148d23e63a1
5w

# ╔═╡ baa1367a-15c3-11eb-0761-7bfeb3405863
33 + w # matemáticamente no tiene sentido 😄

# ╔═╡ 1b50c1fc-15c4-11eb-263a-6fb426288b4e
33 .+ w # suma puntalmente

# ╔═╡ 920fe2de-15c2-11eb-2b1b-a112034289cb
w * v # producto de vectores columna no vale

# ╔═╡ c0fb5254-15c2-11eb-2c65-7d72dedb93bc
w .* v # entrada por entrada

# ╔═╡ 0646ab06-15c3-11eb-0f69-dd2d86e7c294
v' # vector traspuesto; columnas ⟶ filas

# ╔═╡ fc16e25e-15c2-11eb-0b56-49224f63eea9
w * v'

# ╔═╡ ef2612b8-15c2-11eb-2422-43214efe5e8c
x = ones(7)

# ╔═╡ 1e5feffe-15c3-11eb-1cff-4f0d43d25f7f
y = zeros(5)

# ╔═╡ 4870e1fa-160a-11eb-25ee-5924c1901a40
1:5 # 1,2,3,4,5

# ╔═╡ 5c6947a6-160a-11eb-082a-71c14accf6b6
collect(1:5)

# ╔═╡ 34eabdf4-15c2-11eb-36e7-8fca12574281
md"## Matrices"

# ╔═╡ 4a8aeeb4-15c1-11eb-03c1-a15a84595666
A = [ 1 2 3
      4 5 6
      7 8 9]

# ╔═╡ 4aa814b2-15c1-11eb-01a1-1144c2c42eed
B = [ 1 2 3; 4 5 6; 7 8 9.0]

# ╔═╡ 4b074a36-15c1-11eb-22e9-558379153f41
A'

# ╔═╡ b331354c-15c4-11eb-146d-a72977f76ff9
A + B

# ╔═╡ 4b4357a6-15c1-11eb-218f-81be4ef843f7
C = A * B # producto matricial

# ╔═╡ 39775b42-15c3-11eb-35dd-d91b888f446a
C * v # producto matriz por vector

# ╔═╡ 7ae28bba-15c3-11eb-3177-6bbb130fdd19
A .* B # entrada por entrada

# ╔═╡ 7b088d44-15c3-11eb-1ed8-97645f873f93
1 + A # no tiene sentido

# ╔═╡ 7b238caa-15c3-11eb-094c-597f2253c5c7
1 .+ A

# ╔═╡ 5bbfe168-15c5-11eb-1ab6-a3e0eda16d5f
A

# ╔═╡ 7b397af6-15c3-11eb-3451-b352c8ee2bf6
A[1,:]

# ╔═╡ 7b535502-15c3-11eb-1536-174bf0fa2bde
A[:,2]

# ╔═╡ 7b7ab5ca-15c3-11eb-36e1-3d5522bfe4fd
A[1:2,2:3]

# ╔═╡ f5a9da4e-15c4-11eb-3280-41c176063f35
x[4:7]

# ╔═╡ c4dd7fb6-15c5-11eb-1bd5-e3a9fa95fbb5
md"""## Estructuras de control

Indentación es opcional pero recomendada
"""

# ╔═╡ 0c862d72-15c6-11eb-33e8-29f140cade10
t = 5

# ╔═╡ afbc2f24-15c5-11eb-323a-b90efb703a7a
if t < 0
	mensaje = "negativo"
elseif t > 0
	mensaje = "positivo"
else
	mensaje = "cero"
end

# ╔═╡ a927f778-1607-11eb-2ee6-7337d6b828c6
if t == Inf || t == -Inf
	mensaje2 = "Muy grande/pequeño"
elseif t < 0
	mensaje2 = "negativo"
elseif t < 1e-1 && t >= 0
	mensaje2 = "cerca de cero"
elseif 5 <= t < 10
	mensaje2 = "en invervalo [5, 10)"
end

# ╔═╡ 1b9a190c-15c8-11eb-2a00-29b2c32463f7
p = ones(10)

# ╔═╡ f74bd2a2-15c7-11eb-0e2a-73f66c527549
for i in 1:10
	p[i] = 2i + p[i] 
end

# ╔═╡ 400554b4-15c8-11eb-2c17-c1ed50064291
p

# ╔═╡ c5da8ccc-160a-11eb-217b-ab829de0cb3e
md"## Funciones"

# ╔═╡ 6d305c32-15c7-11eb-2001-a73f7aafc111
f(x) = x^2

# ╔═╡ e006fc3e-15c7-11eb-018a-75272d4579fd
f(5)

# ╔═╡ 65212e12-15c8-11eb-34f1-1367939bcdd8
f.(p)

# ╔═╡ 7e2a7522-15c7-11eb-0980-b56a283b4593
function factorial(n)
	m = 1
	for i in 1:n
		m *= i
	end
	return m
end
	

# ╔═╡ 4f15ef82-15c7-11eb-319e-e5b792d952bc
factorial(5)

# ╔═╡ 98adaf1c-15c8-11eb-0619-d5f742edfc8a
function factorial_recursión(n)
	if n <= 1
		return 1
	end
	
	return n * factorial_recursión(n-1)
end

# ╔═╡ c1ef9168-15c8-11eb-256e-ebfc4a0cf78b
factorial_recursión(5)

# ╔═╡ 7de6b566-1609-11eb-05b1-69d223ae272c
(x) ->  x^2 # función anónima

# ╔═╡ 92d20480-1609-11eb-152a-f54f74ce03d5
function comparación(función1, función2, n)
	resultado1 = función1(n)
	resultado2 = función2(n)
	return resultado1 == resultado2
end

# ╔═╡ f6131e7e-1609-11eb-0140-f34c393e54a9
comparación(factorial, factorial_recursión, 7)

# ╔═╡ 14572bca-160a-11eb-22dc-61658cb89738
comparación(factorial, (n) -> prod(1:n) , 7)

# ╔═╡ 38bfe4ca-160a-11eb-3707-7f4b36c35ece
factorial.(1:5)

# ╔═╡ 6a0b9e72-160b-11eb-1dc9-43e59ea8f1be
md"""

$h(x) = \sum_{i=1}^n x_i^2$

"""

# ╔═╡ a073a3de-160a-11eb-3177-1d1351e1d300
h(x, y) = x^2 + y^2

# ╔═╡ 1c6be8fe-160b-11eb-0426-37955dc202ad
h(x, y, z) = x^2 + y^2 + z^2

# ╔═╡ 39b0996e-160b-11eb-2759-9bb2f9d6dc09
h(x) = sum(x.^2)

# ╔═╡ 153ad202-160b-11eb-28a1-47b4ac2af05e
h(1,2)

# ╔═╡ 2f786b84-160b-11eb-3bbb-45280ff02b64
h(5,4,3)

# ╔═╡ 529749e6-160b-11eb-12e8-938bc0c0c000
h(1:10)

# ╔═╡ a0502958-15c5-11eb-0ab0-f9b5c00b80fc
md"## Desempeño"

# ╔═╡ a06d7b2c-15c5-11eb-12b7-a9581a756ab2
P = rand(500, 500)

# ╔═╡ e7e6207e-160d-11eb-1aa5-2de8c1476400
Q = rand(500, 500)

# ╔═╡ a085ac06-15c5-11eb-30bf-476708d40d9a
P * Q

# ╔═╡ ff0f2282-160d-11eb-2a0b-8d96dea76a15
inv(P * Q)

# ╔═╡ 28e4aba8-160f-11eb-189e-2de2de6e592e
begin
	xx = 1:10
	yy = xx.^2
	plot(xx, yy)
end

# ╔═╡ b632b8b6-160e-11eb-070e-a33d9e926bd2
histogram(randn(10000))

# ╔═╡ b32e5cdc-15ba-11eb-3f6d-b1bdbcf73121
precaucion(text) = Markdown.MD(Markdown.Admonition("warning", "Precaución", [text]));

# ╔═╡ 56ee5458-15bb-11eb-0ad3-d3ade3c348b2
precaucion(md"Si en **matemáticas** no tiene sentido, en **Julia** tampoco.")

# ╔═╡ 212110a0-15bf-11eb-314a-79f322449c82
acierto(text, title="Información que cura") = Markdown.MD(Markdown.Admonition("correct", title, [text]));

# ╔═╡ 94b43758-15bd-11eb-148c-5fe8e484ecbd
acierto(md"Al principio no te preocupes en definir los tipos de datos, pero si le ayudas a Julia con eso, tu programa puede ser aún más veloz.")

# ╔═╡ Cell order:
# ╟─3e9659c2-15bc-11eb-3831-43c0466df092
# ╟─56ee5458-15bb-11eb-0ad3-d3ade3c348b2
# ╟─77d2834a-15b3-11eb-39c0-b31321d4a0d7
# ╟─94b43758-15bd-11eb-148c-5fe8e484ecbd
# ╠═a197ee5e-15b3-11eb-051f-11a3c0c94ad0
# ╠═a7dac908-15b3-11eb-2dad-1db1cdd77935
# ╟─3bedd6cc-15c2-11eb-03cd-234c909e223f
# ╠═4849a004-15c2-11eb-09e3-9723f1cd6ee3
# ╠═86a5600e-15c2-11eb-3f9e-0b893a8ea59b
# ╟─228538f6-15c2-11eb-3b76-19ca6c24dcbd
# ╠═cf46f162-15bb-11eb-191b-53c0d0bc7820
# ╠═4a246586-15c1-11eb-2826-b71865bbd2f5
# ╠═4a662980-15c1-11eb-0658-b9718c25c1a9
# ╠═9e5ed012-15c3-11eb-1e06-f148d23e63a1
# ╠═baa1367a-15c3-11eb-0761-7bfeb3405863
# ╠═1b50c1fc-15c4-11eb-263a-6fb426288b4e
# ╠═920fe2de-15c2-11eb-2b1b-a112034289cb
# ╠═c0fb5254-15c2-11eb-2c65-7d72dedb93bc
# ╠═0646ab06-15c3-11eb-0f69-dd2d86e7c294
# ╠═fc16e25e-15c2-11eb-0b56-49224f63eea9
# ╠═ef2612b8-15c2-11eb-2422-43214efe5e8c
# ╠═1e5feffe-15c3-11eb-1cff-4f0d43d25f7f
# ╠═4870e1fa-160a-11eb-25ee-5924c1901a40
# ╠═5c6947a6-160a-11eb-082a-71c14accf6b6
# ╟─34eabdf4-15c2-11eb-36e7-8fca12574281
# ╠═4a8aeeb4-15c1-11eb-03c1-a15a84595666
# ╠═4aa814b2-15c1-11eb-01a1-1144c2c42eed
# ╠═4b074a36-15c1-11eb-22e9-558379153f41
# ╠═b331354c-15c4-11eb-146d-a72977f76ff9
# ╠═4b4357a6-15c1-11eb-218f-81be4ef843f7
# ╠═39775b42-15c3-11eb-35dd-d91b888f446a
# ╠═7ae28bba-15c3-11eb-3177-6bbb130fdd19
# ╠═7b088d44-15c3-11eb-1ed8-97645f873f93
# ╠═7b238caa-15c3-11eb-094c-597f2253c5c7
# ╠═5bbfe168-15c5-11eb-1ab6-a3e0eda16d5f
# ╠═7b397af6-15c3-11eb-3451-b352c8ee2bf6
# ╠═7b535502-15c3-11eb-1536-174bf0fa2bde
# ╠═7b7ab5ca-15c3-11eb-36e1-3d5522bfe4fd
# ╠═f5a9da4e-15c4-11eb-3280-41c176063f35
# ╟─c4dd7fb6-15c5-11eb-1bd5-e3a9fa95fbb5
# ╠═0c862d72-15c6-11eb-33e8-29f140cade10
# ╠═afbc2f24-15c5-11eb-323a-b90efb703a7a
# ╠═a927f778-1607-11eb-2ee6-7337d6b828c6
# ╠═1b9a190c-15c8-11eb-2a00-29b2c32463f7
# ╠═f74bd2a2-15c7-11eb-0e2a-73f66c527549
# ╠═400554b4-15c8-11eb-2c17-c1ed50064291
# ╟─c5da8ccc-160a-11eb-217b-ab829de0cb3e
# ╠═6d305c32-15c7-11eb-2001-a73f7aafc111
# ╠═e006fc3e-15c7-11eb-018a-75272d4579fd
# ╠═65212e12-15c8-11eb-34f1-1367939bcdd8
# ╠═7e2a7522-15c7-11eb-0980-b56a283b4593
# ╠═4f15ef82-15c7-11eb-319e-e5b792d952bc
# ╠═98adaf1c-15c8-11eb-0619-d5f742edfc8a
# ╠═c1ef9168-15c8-11eb-256e-ebfc4a0cf78b
# ╠═7de6b566-1609-11eb-05b1-69d223ae272c
# ╠═92d20480-1609-11eb-152a-f54f74ce03d5
# ╠═f6131e7e-1609-11eb-0140-f34c393e54a9
# ╠═14572bca-160a-11eb-22dc-61658cb89738
# ╠═38bfe4ca-160a-11eb-3707-7f4b36c35ece
# ╟─6a0b9e72-160b-11eb-1dc9-43e59ea8f1be
# ╠═a073a3de-160a-11eb-3177-1d1351e1d300
# ╠═153ad202-160b-11eb-28a1-47b4ac2af05e
# ╠═1c6be8fe-160b-11eb-0426-37955dc202ad
# ╠═2f786b84-160b-11eb-3bbb-45280ff02b64
# ╠═39b0996e-160b-11eb-2759-9bb2f9d6dc09
# ╠═529749e6-160b-11eb-12e8-938bc0c0c000
# ╟─a0502958-15c5-11eb-0ab0-f9b5c00b80fc
# ╠═a06d7b2c-15c5-11eb-12b7-a9581a756ab2
# ╠═e7e6207e-160d-11eb-1aa5-2de8c1476400
# ╠═a085ac06-15c5-11eb-30bf-476708d40d9a
# ╠═ff0f2282-160d-11eb-2a0b-8d96dea76a15
# ╠═3b511ffe-160e-11eb-2dfe-a9383426f0d6
# ╠═28e4aba8-160f-11eb-189e-2de2de6e592e
# ╠═b632b8b6-160e-11eb-070e-a33d9e926bd2
# ╟─b32e5cdc-15ba-11eb-3f6d-b1bdbcf73121
# ╟─212110a0-15bf-11eb-314a-79f322449c82

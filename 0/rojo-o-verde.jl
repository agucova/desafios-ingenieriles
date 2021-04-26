### A Pluto.jl notebook ###
# v0.14.3

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 6eeaa9d4-a6cb-11eb-3b50-25ca960b09a2
md"# Desafío ingenieril: ¿Rojo o verde?"

# ╔═╡ d2c62e69-72f2-4c4b-8c4a-737eb407b50f
md"""
## Introducción
Un **algoritmo** es una secuencia de instrucciones paso-a-paso para reallizar una tarea.

![Mapa trazando la ruta de la casa de Alicia a la casa de Bob](https://i.imgur.com/R2ZbkgV.png)

Si Alicia está manejando a la casa de Bob, un programa de navegación (como Google Maps) puede darle las siguientes instrucciones:

```python
Gira a la derecha hacia la avenida Siempreviva
Sigue manejando por 3 cuadras
Gira a la izquierda a la calle Baker y sigue manejando dos cuadras
Gira a la derecha y maneja por una cuadra
Llegaste!
```

¿Pero qué pasa si, cuando llega a la intersección de Avenida Siempreviva y la Calle Baker, Baker está cerrado por una construcción? El programa necesita una forma de hacer cosas distintas basado en las condiciones observadas!

Una declaración **if** (*if statement* en inglés), también conocida como declaración condicional, permite que un programa haga precisamente eso. Una declaración condicional tiene tres partes:

- Una condición a ser verificada
- Una lista de instrucciones para cuando la condición está satisfecha y,
- Una lista de instrucciones para cuando la condición no es satisfecha

Así se ve una declaración if:

```python
if cosa que verificar:
	haz esto cuando la condición es verdadera
else:
	haz esto cuando la condición es falsa
```

**Nota:** En inglés `if` significa "si es que", mientras que `else` significa "sino".

Entonces las instrucciones de manejar para Alicia se pueden ver algo así:

```python
Gira a la derecha hacia la Avenida Siempreviva
Maneja tres cuadras
if se puede girar a la izquierda:
	Gira a la izquierda y maneja dos cuadras
	Gira a la derecha y maneja una cuadra
else:
	Sigue manejando derecho por una cuadra
	Gira a la izquierda y maneja por dos cuadras
Llegaste!
```

Aquí hay un ejemplo numérico. Este programa calcula y anuncia la distancia entre dos puntos `x` e `y` en la linea numérica.

```python
dado: los números x e y

if x > y:
	define distancia como x - y
else:
	define distancia como y - x

anunciar: distancia
```

Nota como usamos el formato `acción(descripción)` para denotar instrucciones.

Los enunciados condicionales pueden anidarse, es decir, las instrucciones dentro de un enunciado `if` pueden incluir otro enunciado `if`.

"""

# ╔═╡ c9126d86-47fc-453c-91ab-0ed5027a9156
md"""
![Recta numérica](https://i.imgur.com/y0OOL7u.png)

Aquí hay un algoritmo que anuncia tres distintos colores basados en la posición de `x` basado en la linea numérica que se muestra arriba:
```python
dado: x, un número:
if x < A:
    "ROJO"
else:
	if x > B:
		"VERDE"
	else:
		"NEGRO"
```

Digamos que A = 2 y B = 6. Hicimos parte del trabajo y programamos una copia del programa de arriba en este documento utilizando un lenguaje de programación llamado Julia. Para ver cómo funciona, prueba usar el deslizador de abajo para cambiar el valor de `x` y ver el resultado:
"""

# ╔═╡ ba1c2c81-bcf3-4c0f-a306-5aa453c9ad32
begin
	x = 5
	xslider = @bind x html"<input type=range min=0 max=10>"
	md"""**Escoge un valor para `x`:**
	
	0 $(xslider) 10
	"""
end

# ╔═╡ 23411cab-3117-42bf-a037-46e23d85c03a
md"Con x = $(x), el programa dice:"

# ╔═╡ 247a2fcf-68cf-4475-9703-db77ef5ab734
begin	
	A = 2
	B = 6
	
	if x < A
		"ROJO"
	else
		if x > B
			"VERDE"
		else
			"NEGRO"
		end
	end
end

# ╔═╡ 04faf528-bc1e-4a61-b27f-437c3d6f9909
md"""Tip: Si quieres ver el código que hace funcionar el programa, selecciona la fila arriba de este texto y apreta el botón de 👁 a la izquierda."""

# ╔═╡ ce450f50-a6cb-11eb-1e16-bf1498b7cc2e
md"### El desafío"

# ╔═╡ e220495e-a6cb-11eb-23d7-2723ef5d5b3b
md"""Mira el siguiente programa:
```python
if x > 6 - x^2:
	if x^2 < 3 - 2x:
		"ROJO"
	else:
		"VERDE"
else:
	"AZUL"
```

Imagina correr este programa 21 veces, con x siendo cada uno de los números enteros desde -10 a 10. 

**¿Cuántas veces el programa anunciará "ROJO"?**

"""

# ╔═╡ Cell order:
# ╟─6eeaa9d4-a6cb-11eb-3b50-25ca960b09a2
# ╠═d2c62e69-72f2-4c4b-8c4a-737eb407b50f
# ╟─c9126d86-47fc-453c-91ab-0ed5027a9156
# ╟─ba1c2c81-bcf3-4c0f-a306-5aa453c9ad32
# ╟─23411cab-3117-42bf-a037-46e23d85c03a
# ╟─247a2fcf-68cf-4475-9703-db77ef5ab734
# ╟─04faf528-bc1e-4a61-b27f-437c3d6f9909
# ╟─ce450f50-a6cb-11eb-1e16-bf1498b7cc2e
# ╟─e220495e-a6cb-11eb-23d7-2723ef5d5b3b

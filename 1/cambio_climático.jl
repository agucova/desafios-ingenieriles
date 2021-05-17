### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# ╔═╡ ba2191c8-b6ee-11eb-280b-9921e61d8d06
md"""### VisitING Ingeniería UC - Abril 2021"""

# ╔═╡ 9c21f12d-a9f4-4fc7-b58a-b8bf3a1e3c24
md"# Desafío ingenieril: Estimando el Cambio Climático"

# ╔═╡ 1f7bf6ff-f98c-46fb-b078-9160509886ec
md"""
## Introducción
Las emisiones humanas de dióxido de carbono (CO₂) y otros gases invernaderos son la causa primaria del **cambio climático**, el que corresponde a uno de los desafíos mas urgentes de la humanidad.[¹](#referencias).

![Volcán de Mauna Loa, dónde se encuentra el observatorio mas importante de CO2 en el planeta.](https://i.imgur.com/5YkbpoQ.png)

El vínculo entre las temperaturas globales y las concentraciones de gases invernadero, especialmente el C02, ha sido verdadero a lo largo de la historia de la Tierra.[²](#referencias).

Ahora, ¿cómo podemos estimar nuestro impacto en las emisiones? ¿O mejor aún, cómo podemos estimar las emisiones de todo el planeta?

## La química del asunto
¿Por qué nos gustan los combustibles fósiles? No parece ser por su hermosura, agradables olores o bonitos colores, sino que nos gustan por su energía conveniente y barata. Su energía se libera gracias a una reacción química llamada combustión, que requiere la presencia de oxígeno.

Veamos las siguientes reacciones químicas:

- **Carbón**
$C + O_2  \rightarrow  CO_2 + 7.9\text{ kcal}$
$1g + 2.7g \;\rightarrow\; 3.7g$

- **Gas natural** (ejemplo de metano)
$CH_4 + 2O_2  \rightarrow  2H_2O + CO_2 + 13\text{ kcal}$
$1g\;\; +\;\; 4g \;\rightarrow\; 2,25g\;\; +\;\; 2,75g$

- **Gasolina** (ejemplo de octano)
$C_8 H_{18} + 12.5 O_2 \rightarrow 9H_2O + 8CO_2 + 11.5\text{ kcal}$
$1g + 3.51g\;\; \rightarrow \;\;1.42g + 3.09g$

Fíjate en los gramos producidos de $CO_2$ con respecto a los gramos de combustible utilizados en cada caso (ajustamos las ecuaciones para $1g$ de combustible).

Podrás notar que en general la tasa de gramos de $CO_2$ a gramos de combustible se aproxima a **3:1**. Esta razón la podemos utilizar para calcular fácilmente la masa de las emisiones después de quemar cierta cantidad de combustible (masa:masa).

Para relacionar la energía con el $CO_2$, podemos obtener la cantidad de $CO_2$ producido por kilocaloría de energía dividiendo en base a las reacciones, lo que nos da 0.47, 0,24 y 0,27 g/kcal para carbón, gas, y gasolina, respectivamente.

## Las emisiones
La energía producida por combustibles fósiles compone aproximadamente 80% de la producción mundial de electricidad, y un 77% de la producción eléctrica en Chile. Acorde con la IEA, la agencia internacional de energía, el mundo produce aproximadamente 17 terawatts-año (tip: tera $\rightarrow$ trillón), por lo que los combustibles fósiles deberían producir $\approx 14 \text{ TW-año}$, dividibles en 5, 4 y 5 para carbón, gas y gasolina respectivamente.

Partiendo de esa división, podemos calcular el $CO_2$ producido por kcal para la suma de combustibles fósiles a partir de los números que teníamos antes, lo que es simplemente:

$\frac{5}{14} * 0.47 + \frac{4}{14} * 0.21 + \frac{5}{14} * 0.29 \approx 0.31\text{ g/kcal}$

Podemos convertir 14 TW-año a kilocalorías por año, y nos da $\approx 10^{17}\text{ kcal/año}$, por lo que aprovechando el valor anterior:

$0.31\text{g/kcal} \cdot 10^{17}\text{ kcal/año} \approx 3.1 \cdot 10^{13} \text{kg/año}$.

Esto significa que **emitimos 31 gigatoneladas de $CO_2$** por año!

## Contrastando con la realidad
![](https://i.pinimg.com/originals/df/1a/e7/df1ae72cfd5e6d0d535c0ec99e708f6f.jpg)

Ahora, este número no es tan útil porque lamentablemente no tenemos ninguna forma de medir directamente si es correcto. ¿Cómo podemos saber cuantas toneladas de $CO_2$ hay en la atmósfera?

En la práctica, observatorios como el observatorio de Mauna Loa, en Hawaii, han recogido la **concentración de $CO_2$ en la atmósfera** (en ppm, particulas por millón), y de hecho mantienen registros detallados desde 1850 del $CO_2$ en la Tierra.

Según Mauna Loa, en abril de 2021 la concentración de atmósferica de $CO_2$ se encuentra en $\approx 420$ ppm lo que contrasta a unos $280$ ppm antes de la revolución industrial.

Para calcular los $ppm$ de nuestras emisiones, podemos dividir por la masa aproximada de la atmósfera:

$\frac{31 \text{ Gt}}{5,000,000\text{ Gt}}\cdot \frac{1,000,000}{1}\text { ppm}$

Que corregido por volumen nos da $2.5\text {ppm}$ de $CO_2$ emitido por año.


## El desafío
Para mantener el calentamiento global bajo los $2^\text{o}C$, un escenario común que se plantea es mantener la concentración global de $CO_2$ bajo los 500 ppm para 2100. Estima, **¿Qué reducción en toneladas de combustibles fósiles consumidos anualmente, a nivel global, debemos lograr para cumplir ese escenario?**

Puedes contestar el desafío [aquí](https://forms.gle/H7FfeLZth58x8DMZA). El plazo para soluciones es el **viernes 21 de mayo a las 23:59**.
"""


# ╔═╡ d87a082a-4ee3-4877-a520-9b61da990bb3
md"""
## Referencias
[1]: **IPCC, 2013: Climate Change 2013: The Physical Science Basis.** Contribution of Working Group I to the Fifth Assessment Report of the Intergovernmental Panel on Climate Change [Stocker, T.F., D. Qin, G.-K. Plattner, M. Tignor, S.K. Allen, J. Boschung, A. Nauels, Y. Xia, V. Bex and P.M. Midgley (eds.)]. Cambridge University Press, Cambridge, United Kingdom and New York, NY, USA, 1535 pp.

[2]: Lacis, A. A., Schmidt, G. A., Rind, D., & Ruedy, R. A. (2010). Atmospheric CO2: Principal control knob governing Earth’s temperature. Science, 330(6002), 356-359.

"""

# ╔═╡ Cell order:
# ╠═ba2191c8-b6ee-11eb-280b-9921e61d8d06
# ╟─9c21f12d-a9f4-4fc7-b58a-b8bf3a1e3c24
# ╟─1f7bf6ff-f98c-46fb-b078-9160509886ec
# ╟─d87a082a-4ee3-4877-a520-9b61da990bb3

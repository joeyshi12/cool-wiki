---
title: "Convexity"
subtitle: "[Return home](/)"
---

## Convex Sets

**definition**. $C$ is **convex** if $\lambda x + (1 - \lambda) y\in{C}$ for any $x, y\in{C}$.

**proposition**. Let $C_1,\ldots, C_n$ be convex, $\mu_1,\ldots, \mu_n\in\mathbb{R}$,
and $A\in\mathbb{R}^{m\times n}$.
Then, the following are also convex:

1. $\displaystyle \bigcap_{i=1}^{n} C_i$
2. $\displaystyle \mu_1C_1 + \cdots + \mu_nC_n = \left\{\sum_{i=1}^{n} \mu_i x_i \mid x_i\in{C_i}\right\}$
3. $A(C) = \{Ax \mid x\in{C}\}$

## Examples of Convex Sets

- $B = \{x\in\mathbb{R}^{n} \mid \|x - c\|\leq r\}$ (Norm ball)
- $\Delta_n = \{x\in\mathbb{R}^n \mid \sum x_i \leq 1, x_i\geq 0\}$ (Simplex)
- $\overline{\Delta}_n = \{x\in\mathbb{R}^{n} \mid \sum x_i = 1, x_i\geq 0\}$ (Probability simplex)
- $H_{a, \beta}^{-} = \{x\in\mathbb{R}^n \mid a^T x\leq \beta\}$ (Half-space)
- $H_{a, \beta} = \{x\in\mathbb{R}^n \mid a^T x = \beta\}$ (Hyper-plane)

![Convex Sets](/assets/convex_sets.svg)

## Convex Functions

**definition.** $f$ is **convex** over a convex set $C$ if
$f(\lambda x + (1 - \lambda) y) \leq \lambda f(x) + (1 - \lambda) f(y)$
for any $x, y\in{C}$.
$f$ is **strictly convex** if strict inequality holds.

**proposition**. Let $f, g$ be convex, $\alpha\geq 0$, $A\in\mathbb{R}^{m\times n}$ and $b\in\mathbb{R}^n$. Then, the following are also convex:

1. $\alpha f$
2. $f + g$
3. $f(Ax + b)$

**theorem**. Local minimizers of a convex function $f$ are global minimizers.
Moreover, if $f$ is strictly convex, the global minimizer is unique.

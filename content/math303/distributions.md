---
title: "Distribution Properties"
subtitle: "[Return home](/)"
---

| Distribution       | PMF$(k)$/PDF$(x)$                    | Mean                | Variance              |
|--------------------|--------------------------------------|---------------------|-----------------------|
| $Geom(p)$          | $(1-p)^{k-1}p$                       | $\frac{1}{p}$       | $\frac{1-p}{p^2}$     |
| $Bin(n, p)$        | $\binom{n}{k}p^{k}(1-p)^{n-k}$       | $np$                | $np(1-p)$             |
| $Exp(\lambda)$     | $\lambda e^{-\lambda x}$             | $\frac{1}{\lambda}$ | $\frac{1}{\lambda^2}$ |
| $Poisson(\lambda)$ | $\frac{\lambda^{k}e^{-\lambda}}{k!}$ | $\lambda$           | $\lambda$             |

## Exponential Distribution

The exponential random variable $X\sim Exp(\lambda)$, $\lambda > 0$ has the following properties:

- $P(X > t + s \mid X > s) = P(X > t)$ (Memoryless)
- $\min\{Exp(\lambda_1), Exp(\lambda_2)\} \sim Exp(\lambda_1 + \lambda_2)$

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

To analytically compute some of the expectations above,
it is useful to recall some of the following sums/series:

\begin{align}
\frac{1-x^{n+1}}{1-x} &= \sum_{k=0}^{n} x^{k} \\
(x + y)^{n} &= \sum_{k=0}^{n} \binom{n}{k}x^{k}y^{n-k} \\
e^x &= \sum_{k=0}^{\infty} \frac{x^{k}}{k!}
\end{align}

## Binomial Distribution

The binomial distribution is equivalent to the
distribution of a sum of independent Bernouli random variables. Thus,

$$Bin(n, p) + Bin(m, p) = Bin(n + m, p).$$

## Exponential Distribution

The exponential random variable $X\sim Exp(\lambda)$, $\lambda > 0$ has the following properties:

- $P(X > t + s \mid X > s) = P(X > t)$ (Memoryless)
- $\min\{Exp(\lambda_1), Exp(\lambda_2)\} \sim Exp(\lambda_1 + \lambda_2)$

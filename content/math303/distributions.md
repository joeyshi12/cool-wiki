---
title: "Distributions"
subtitle: "[Return home](/)"
---

| Distribution               | PMF$(k)$/PDF$(x)$                                 | Mean                | Variance              |
|----------------------------|---------------------------------------------------|---------------------|-----------------------|
| $\mbox{Geom}(p)$           | $(1-p)^{k-1}p$                                    | $\frac{1}{p}$       | $\frac{1-p}{p^2}$     |
| $\mbox{Bin}(n, p)$         | $\binom{n}{k}p^{k}(1-p)^{n-k}$                    | $np$                | $np(1-p)$             |
| $\mbox{Exp}(\lambda)$      | $\lambda e^{-\lambda x}$                          | $\frac{1}{\lambda}$ | $\frac{1}{\lambda^2}$ |
| $\mbox{Poisson}(\lambda)$  | $\frac{\lambda^{k}e^{-\lambda}}{k!}$              | $\lambda$           | $\lambda$             |
| $\mbox{Gamma}(n, \lambda)$ | $\frac{x^{n-1}e^{-\lambda x}\lambda^{n}}{(n-1)!}$ | $\frac{n}{\lambda}$ | $\frac{n}{\lambda^2}$ |

To analytically compute the expectations above,
it is useful to recall the following sums/series:

\begin{align}
\frac{1-x^{n+1}}{1-x} &= \sum_{k=0}^{n} x^{k} \\
(x + y)^{n} &= \sum_{k=0}^{n} \binom{n}{k}x^{k}y^{n-k} \\
e^x &= \sum_{k=0}^{\infty} \frac{x^{k}}{k!}
\end{align}

## Expectation

Let $X$ be a random variable over state space $\Omega$.
If $X$ is discrete, then the expectation is

$$EX = \sum_{x\in\Omega} xP(X = x).$$

If $X$ is continuous and $\Omega\subseteq\mathbb{R}$, then the expectation is

$$EX = \int_{-\infty}^{\infty} x f_X(x) dx.$$

Recall that the probability density function is defined as
$f_X(x) := \frac{d}{dx} P(X\leq x)$.
If $\Omega$ is bounded below by $a\in\mathbb{R}$,
then we can alternatively compute expectation as the following:

$$EX = \int_{0}^{\infty} (1 - P(X\leq x)) dx.$$

**Remark.** This can shown by expressing the integrand as another
integral and changing the order of integration.

## Binomial Distribution

The binomial distribution is equivalent to the
distribution of a sum of independent Bernouli random variables. Thus,

$$\mbox{Bin}(n, p) + \mbox{Bin}(m, p) = \mbox{Bin}(n + m, p).$$

## Exponential Distribution

Let $X\sim \mbox{Exp}(\lambda)$, $Y\sim \mbox{Exp}(\mu)$, $\lambda, \mu > 0$.
Then, the following properties hold:

- $P(X > t + s \mid X > s) = P(X > t)$ (Memoryless)
- $\min(X, Y) \sim \mbox{Exp}(\lambda_1 + \lambda_2)$
- $\displaystyle P(X < Y) = \frac{\lambda_1}{\lambda_1 + \lambda_2}$

---
title: "Branching Process"
subtitle: "[Return home](/)"
---

A branching process $Z_{n}$ with reproduction law $X$
counts the number of individuals at each generation

$$Z_n = \sum_{i=1}^{Z_{n-1}} X_{i},$$

where each $X_i$ are independent with same distribution as $X$
and $Z_{0} = 1$.

**proposition**. Denote $\mu = EX$, $\sigma^2 = \mbox{Var}(X)$, and
$\eta = P(\text{eventual extinction})$. Then,

1. $\eta$ is the smallest non-negative root of $G(s) = s$
2. If $\mu < 1$, then $\eta = 1$
3. If $\mu > 1$, then $\eta < 1$
4. If $\mu = 1$, then
    - If $\sigma^2 = 0$, then $\eta = 0$ since $Z_{n} = 1$ is constant
    - If $\sigma^2 > 0$, then $\eta = 1$

**Note**: if it's given that the number of individuals at any generation
is $k$, then the probability of extinction is $\eta^{k}$
as each individual can be thought as independent branching processes,
so the probability of extinction is the probability that
each process is eventually goes extinct.

## Mean and Variance of the Branching Process

Let $Z_{n}$ be a branching process with reproduction law $X$ and
let $\mu = EX$, $\sigma^2 = \mbox{Var}(X)$. The expectation of $Z_{n}$ is

$$E[Z_{n}] = E[E[Z_{n} \mid Z_{n-1}]] = E[Z_{n-1}\mu] = \mu E[Z_{n-1}] = \cdots = \mu^{n} E[Z_{0}] = \mu^{n}.$$

The variance of $Z_{n}$ is

$$\mbox{Var}(Z_{n}) = \begin{cases}
\sigma^2 \mu^{n-1}\left(\frac{1 - \mu^n}{1 - \mu}\right), &\text{if } \mu\neq 1 \\
n\sigma^2, &\text{if } \mu = 1
\end{cases}$$

**Remark**: the proof for this is more cumbersome, but can be done
with conditional variance (see textbook).

$$\mbox{Var}(Z_n) = E[\mbox{Var}(Z_n\mid Z_{n-1})] + \mbox{Var}(E[Z_{n}\mid Z_{n-1}])$$

## Generating Function

**definition**. The generating function of $X$ is $G_X(s) = E[s^{X}]$.

**proposition**. Let $X_{1},\ldots, X_{N}$ be i.i.d. and $N$ be an integer-valued random variable.
Define $Y = X_1 + \cdots + X_{N}$ and let $Z_{n}$ be defined as above.
Then, the following holds:

- $G_{X_1 + X_2}(s) = G_{X_1}(s)G_{X_2}(s)$
- $G_{Y}(s) = E_N[E[s^{Y} \mid N]] = E_N[(G_{X}(s))^{N}] = G_{N}(G_{X}(s))$
- $G_{Z_{n}}(s) = G_{Z_{n-1}}(G(s)) = G_{n}(s)$

Additional properties:

- $G'(1) = E[X]$
- $G''(1) = E[X^2] - E[X]$
    - $Var(X) = G''(1) + G'(1) - (G'(1))^2$

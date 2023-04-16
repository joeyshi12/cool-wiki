---
title: "Poisson Process"
subtitle: "[Return home](/)"
---

A Poisson random variable $X\sim Poisson(\lambda)$, $\lambda > 0$
has p.d.f. $P(X = k) = \frac{\lambda^ke^{-\lambda}}{k!}$ and expectation $E[X] = \lambda$.

**Definition 2**. A counting process $\{N(t)\}_{t\geq 0}$ is a rate-$\lambda$ Poisson process if

1. Increments $N(t) - N(s)$ and $N(v) - N(u)$ are independent
2. $P(N(t+h) - N(t) = 1) = \lambda h + o(h)$
3. $P(N(t+h) - N(t)\geq 2) = o(h)$

## Poisson thinning

Suppose $N(t)$ is a Poisson process with independent events of

$$
\begin{cases}
\mbox{Type 1} &\text{w.p.}\quad p \\
\mbox{Type 2} &\text{w.p.}\quad 1-p
\end{cases}
$$

Then, the number of type 1 events by time $t$ ($N_1(t)$)
and the number of type 2 events by time $t$ ($N_2(t)$)
are also Poisson processes of rates $p\lambda$ and $(1-p)\lambda$ respectively.

Now suppose there are $k$ types and the probability of
an event being type $i$ by time $t$ is $p_i(t)$.

**Proposition**. $\displaystyle N_i(t) \sim Poisson\left(\int_{0}^{t} p_i(s) ds\right)$

## Conditioning on total events

Conditioned on $N(t) = n$ events $S_1,\dots S_n$,
each arrival time will have a uniform distribution $S_i\sim Unif[0, t]$.

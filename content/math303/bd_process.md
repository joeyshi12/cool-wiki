---
title: "Birth-Death Process"
subtitle: "[Return home](/)"
---

**Definition.** Consider a CTMC with states $i=0,1,2\ldots,n$.
Let $\lambda_{i}$ be the rate that $i$ transitions to $i+1$,
$\mu_{i}$ be the rate that $i$ transitions to $i-1$,
and $\lambda_{i} + \mu_{i}$ be the rate that $i$ transitions to a new state.
This CTMC is known as a **birth-death process**.

![Birth-Death Chain](/assets/bd_process.svg)

The limiting probabilities satisfies the [balance equations](/content/math303/ctmc.html#limiting-probabilities). Then,

\begin{align}
\lambda_{0} P_{0} &= \mu_{1} P_{1} \\
(\lambda_{1} + \mu_{1}) P_{1} &= \lambda_{0} P_{0} + \mu_{2} P_{2} \Rightarrow \lambda_{1} P_{1} = \mu_{2} P_{2}
\end{align}

By induction, we find $\lambda_{k-1} P_{k-1} = \mu_{k} P_{k}$, so

$$P_{k} = \frac{\lambda_{k-1}}{\mu_{k}} P_{k-1} = \frac{\lambda_{k-1}\cdots \lambda_{0}}{\mu_{k}\cdots \mu_{1}}P_{0}.$$

## Example 1

Let $\lambda_{i} = \lambda$, $\mu_{i} = \mu$.

\begin{align}
\sum_{k=0}^{n} P_{k}
&= \sum_{k=0}^{n} \left( \frac{\lambda}{\mu} \right)^{k} P_{0}
= P_{0} \left( \frac{1 - (\lambda/\mu)^{n+1}}{1 - \lambda/\mu} \right)
= 1 \\
P_{0} &= \frac{1 - \lambda/\mu}{1 - (\lambda/\mu)^{n+1}} \\
P_{k} &= \left( \frac{\lambda}{\mu} \right)^{k}\frac{1 - \lambda/\mu}{1 - (\lambda/\mu)^{n+1}}
\end{align}

If the state space were infinite and $\lambda/\mu < 1$, then

$$P_{k} = \left( \frac{\lambda}{\mu} \right)^{k}\left(1 - \frac{\lambda}{\mu}\right) = P(\mbox{Geom}(\lambda/\mu) = k + 1),$$

so the distribution of limiting probabilities is $\mbox{Geom}(\lambda/\mu) - 1$.

## Example 2

Let $\lambda_{i} = (n-i)\lambda$, $\mu_{i} = i\mu$ and suppose we have $n+1$ states.

\begin{align}
P_{k} &= \frac{(n-k)(n-k+1)\cdots n}{k(k-1)\cdots 1}\left( \frac{\lambda}{\mu} \right)^{k}P_{0}
= \binom{n}{k}\left( \frac{\lambda}{\mu} \right)^{n}P_{0} \\
P_{0}\sum_{k=0}^{n} \binom{n}{k} \left( \frac{\lambda}{\mu} \right)^{k}
&= P_{0}(1 + \lambda/\mu)^{n} = 1 \\
P_{0} &= \frac{1}{(1 + \lambda/\mu)^{n}} \\
P_{k} &= \binom{n}{k}\left( \frac{\lambda}{\mu} \right)^{k}\frac{1}{(1 + \lambda/\mu)^{n}} \\
&= \binom{n}{k}\left( \frac{\lambda}{\lambda + \mu} \right)^{k}\left( \frac{\mu}{\lambda + \mu} \right)^{n-k} \\
&= P(\mbox{Bin}(n, \lambda/(\lambda + \mu)) = k),
\end{align}

so the distribution of limiting probabilities is $\displaystyle \mbox{Bin}\left(n, \frac{\lambda}{\lambda + \mu}\right)$.

## Example 3

3. Let $\lambda_{i} = \lambda$ and $\mu_{i} = i\mu$ and the state space be infinite.

\begin{align}
\sum_{k=1}^{n} \frac{1}{k!}\left( \frac{\lambda}{\mu} \right)^{k}P_{0} &= P_{0}e^{\lambda/\mu} = 1 \\
P_{0} &= e^{-\lambda/\mu} \\
P_{k} &= \frac{1}{k!}\left( \frac{\lambda}{\mu} \right)^{k}e^{-\lambda/\mu} \\
&= P(\mbox{Poisson}(\lambda/\mu) = k)
\end{align}

so the distribution of limiting probabilities is $\displaystyle \mbox{Poisson}(\lambda/\mu)$.

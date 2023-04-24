---
title: "Stationary Distribution"
subtitle: "[Return home](/)"
---

An initial distribution $\alpha$ for a Markov chain
is a list of starting probabilities $P(X_0 = i) = \alpha_i$,
such that $\sum_{i} \alpha_i = 1$.
Then, $P(X_{n} = i) = (\alpha P^{n})_{i}$.

**Definition.** We say a distribution $\pi$ is **stationary** if $\pi P = \pi$.
That is, the probability distribution remains the same after a state transition.

## Special Cases

The **detailed balance equations** are the following:

$$p_{ij}\pi_i = p_{ji}\pi_j \text{ for any states } i, j.$$

If the chain satisfies this system, then the chain is **reversible**
and $\pi$ is the stationary distribution.
However, be warned that the stationary distribution may exist and not satisfy this system.

We say a transition matrix $P$ is **doubly stochastic** if
the sum across each column is exactly $1$.
In which case, the stationary distribution is uniform.
That is, $\pi = (1/m, 1/m,\dots, 1/m)$, where $m$ is the number of states.

## Positive Recurrence

**Definition.** Let $C$ be a [recurrent](/content/math303/markov_chain.html#recurrence) communication class.
We say a recurrent communication class $C$ is **positive recurrent** if
the expected time of return of every $i\in{C}$ is finite. In other words,

$$\mathbb{E}[T_{i}\mid X_{0} = i]
= \sum_{n=2}^{\infty} np_{ii}^{(n)} < \infty.$$

Otherwise, we say $C$ is **null recurrent**.<br>
Note that positive recurrence is also a class property.

**Remark.** In the case of a finite state space,
positive recurrence holds when the chain is closed.

## The Big Theorem

Suppose $\{X_{n}\}$ is ergodic (positive recurrent and [aperiodic](/content/math303/markov_chain.html#period)).
Then, the following properties hold:

1. There exists a unique stationary distribution.
2. The mean time of return from $i$ is $1/\pi_{i}$.
3. The proportion of time spent in any state $i$ is $\pi_{i}$.

---
title: "Positive Recurrence"
subtitle: "[Return home](/)"
---

A state $i$ of some communication class $C$ is **recurrent** if
the probability of return is 1, which can be written as

$$f_{i} = P(X_{n} = i \text{ for some } n > 0\mid X_{0} = i) = 1.$$

- This is equivalent to $\sum_{n=1}^{\infty} P(X_{n}=i\mid X_{0} = i) = \infty$
- Note that recurrence is a class property
- We say $C$ is transient if $f_i < 1$

Now suppose $C$ is a recurrent communication class.
We say a recurrent communication class $C$ is **positive recurrent** if
the expected time of return of every $i\in{C}$ is finite. In other words,

$$\mathbb{E}[X_{n} = i \text{ for some } n\mid X_{0} = i]
= \sum_{n\in\mathbb{N}} p_{ii}^{(n)} < \infty.$$

Otherwise, we say $C$ is **null recurrent**.
Note that positive recurrence is also a class property.

In the case of a finite state space,
positive recurrence holds when the chain is closed.

## Observations

Suppose a chain has 2 recurrent communication classes $C_{1}, C_{2}$.

## The Big Theorem

Suppose $\{X_{n}\}$ is ergodic (positive recurrent and [aperiodic](/content/math303/markov_chain.html#period)).
Then, the following properties hold:

1. There exists a unique stationary distribution.
2. The mean time of return from $i$ is $1/\pi_{i}$.
3. The proportion of time spent in any state $i$ is $\pi_{i}$.

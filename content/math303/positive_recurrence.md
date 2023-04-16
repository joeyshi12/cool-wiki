---
title: "Positive Recurrence"
subtitle: "[Return home](/)"
---

In an infinite state space,
a communication class $C$ is recurrent if
the expected time of return for any $i\in{C}$ is finite.
In other words,

$$
\mathbb{E}[X_{n} = i \text{ for some } n\mid X_{0} = i] = \sum_{n\in\mathbb{N}} p_{ii}^{(n)} < \infty.
$$

Otherwise, we say $C$ is transient.

In the case of a finite state space,
positive recurrence holds when the chain is closed.

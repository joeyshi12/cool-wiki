---
title: "Markov Chain"
subtitle: "[Return home](/)"
---

Let $\{X_{n}\}$ be a sequence of i.i.d. random variables.
$\{X_n\}$ is a Markov Chain if $P(X_{n+1} = j \mid X_{n} = i) = X_{1} = j \mid X_{0} = i)$.
$\{X_{n}\}$ is a homogeneous Markov chain if it has the following additional property:

$$P(X_{n+1} = i_{n+1} \mid X_{0} = i_{0},\ldots X_{n} = i_{n})
= P(X_{n+1} = i_{n+1} \mid X_{n} = i_{n}).$$

Let $p_{ij} = P(X_{1} = j \mid X_{0} = i)$.
If the state space of $X_{n}$ is finite,
then the transition matrix of the chain $P$
is an $m\times m$ matrix, such that $P_{ij} = p_{ij}$,
where $m$ is the size of the state space of $X_{n}$.

Markov chains are often depicted as a directed multigraph,
where the states are vertices and
edges $ij$ are weighted by transition probabilities $p_{ij}$.

![Simple Chain](/assets/figures/simple_chain.svg)

## Communication Classes

We say $j$ is **accessible** from $i$ ($i\to j$)
if $P(X_{n} = j \text{ for some } n\mid X_{0} = i) > 0$.
That is to say, there exists a $i-j$ path in the Markov chain.
We say $i$ **communicates** with $j$ ($i\leftrightarrow j$) if we additionally have $j\to i$.

Communication between states is an equivalence relation
and these equivalence classes are called **communication classes**.

If a Markov chain has exactly 1 communication class,
it is called **irreducible**.

## Period

The period of a state $i$ ($d(i)$) is the gcd of the length
of all closed walks in the Markov chain starting from $i$.
The period is a class property, so all states in
the same communication class has the same period.

If $d(i) = 1$, we say $i$ is aperiodic.
If $C$ is the communication class of $i$,
we may also say $C$ is aperiodic.
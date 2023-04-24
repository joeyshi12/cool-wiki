---
title: "Markov Chain"
subtitle: "[Return home](/)"
---

**Definition.** Let $\{X_{n}\}$ be a sequence of i.i.d. random variables.
$\{X_n\}$ is a Markov Chain if for any $n = 0,1,\ldots,$

$$P(X_{n+1} = j \mid X_{n} = i) = P(X_{1} = j \mid X_{0} = i)\quad \text{(Markov property)}.$$

$\{X_{n}\}$ is a homogeneous Markov chain if it has the following additional property:

$$P(X_{n+1} = i_{n+1} \mid X_{0} = i_{0},\ldots X_{n} = i_{n})
= P(X_{n+1} = i_{n+1} \mid X_{n} = i_{n}).$$

Markov chains are often depicted as a directed multigraph,
where the states are vertices and
edges $ij$ are weighted by transition probabilities $p_{ij}$.

![Simple Chain](/assets/simple_chain.svg)

## Transition Matrix

**Definition.** Let $p_{ij} = P(X_{1} = j \mid X_{0} = i)$.
If the state space of $X_{n}$ is finite,
then we define the transition matrix of the chain $P$
as an $m\times m$ matrix, such that $P_{ij} = p_{ij}$,
where $m$ is the size of the state space of $X_{n}$.

Denote $p_{ij}^{(n)} = P(X_n = j \mid X_0 = i)$.
We can observe that

$$(P^2)_{ij} = \sum_{k} p_{ik}p_{kj} = p_{ij}^{(2)}$$

by the law of total probability.
By induction, we can see the transition probabilities after $n$
steps simplies to $p_{ij}^{(n)} = (P^{n})_{ij}$.

The following is another direct consequence of the law of total probabilty:

$$p_{ij}^{(m+n)} = \sum_{k} p_{ik}^{(m)}p_{kj}^{(n)}\quad \text{(Chapman-Kologorov Equations)}$$

## Communication Classes

**Definition.** We say $j$ is **accessible** from $i$ ($i\to j$)
if $P(X_{n} = j \text{ for some } n\mid X_{0} = i) > 0$.
That is to say, there exists a $i-j$ path in the Markov chain.
We say $i$ **communicates** with $j$ ($i\leftrightarrow j$) if we additionally have $j\to i$.

Communication between states is an equivalence relation
and these equivalence classes are called **communication classes**.
A communication class $C$ is called **closed**
if every state not in $C$ is not accessible from any state in $C$.
That is, $i\not\to j$ for any $i\in{C}, j\not\in{C}$.

If a Markov chain has exactly 1 communication class,
it is called **irreducible**.

## Period

**Definition.** The **period** of a state $i$ ($d(i)$) is the gcd of the length
of all closed walks in the Markov chain starting from $i$.
The period is a class property, so all states in
the same communication class has the same period.

If $d(i) = 1$, we say $i$ is **aperiodic**.
If $C$ is the communication class of $i$,
so we may also say $C$ is aperiodic.

## Recurrence

**Definition**. Let $f_i = P(X_n = i\text{ for some } n\geq 1\mid X_0 = i)$.

- If $f_i = 1$, then state $i$ is **recurrent**
- If $f_i < 1$, then state $i$ is **transient**

Since the probability of returning to a recurrent state $i$ is $1$,
we are guarenteed to return to $i$ an infinite number of times.
That is, $P(N_i = \infty \mid X_0 = i) = 1$, where $N_i :=$ number of returns to $i$ along some trajectory,
which we can denote by $\{X_n\}$. Then,

\begin{align}
N_i &= \sum_{n=0}^{\infty} \mathbb{1}[X_n = i] \\
E[N_i\mid X_0 = i] &= \sum_{n=0}^{\infty} p_{ii}^{(n)} = \infty
\end{align}

if $i$ is recurrent and $\sum_{n=0}^{\infty} p_{ii}^{(n)} < \infty$ if $i$ is transient.

The following is commonly used to categorize chains with infinite states
as recurrent or transient:

**Proposition.** A state $i$ is recurrent if and only if $\sum_{n=0}^{\infty} p_{ii}^{(n)}$ diverges.

**Remark.** Recurrence and transience are class properties.

## More Notes

- [Stationary Distribution](/content/math303/stationary_distribution.html)

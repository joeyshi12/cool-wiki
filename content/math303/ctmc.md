---
title: "Continuous-Time Markov Chain"
subtitle: "[Return home](/)"
---

A CTMC $\{X(t)\}_{t\geq 0}$ ( **continuous-time markov chain** ) is characterized by
the rates of transition times $T_i\sim Exp(v_i)$
and the probabilities of transitioning to the next state $p_{ij}$.
Note that $p_{ii} = 0$.
The probability of transition from $i$ to $j$ at any time $t$ is denoted by

$$P_{ij}(t) = P(X(t) = j \mid X(0) = i).$$

Note that the Markov property still holds and homogeneity is often assumed.

The CTMC can be depicted as a graph similar to discrete chains,
but each edge $ij$ is now labelled with the rate of transitioning from $i$ to $j$.

- See [Birth-Death Process](/content/math303/bd_process.html)

## Intensity Matrix

The **intensity matrix** $Q = [q_{ij}]$ of the chain is
defined by $q_{ij} = v_i p_{ij}$ for $i\neq j$ and $q_{ii} = -v_i$.
For any pair of different states $i, j$,
$q_{ij}$ is the rate at which the chain transitions from $i$ to $j$.
We can also use $q_{ij}$ to characterize the CTMC since

$$\begin{align}
\sum_{k\neq i} q_{ik} &= v_i \sum_{k\neq i} p_{ik} = v_i \\
\frac{q_{ij}}{\sum_{k\neq i} q_{ik}} &= \frac{q_{ij}}{v_i} = p_{ij}.
\end{align}$$

## Chapman-Kologorov Equations

**Lemma.** $\displaystyle P_{ij}(t + s) = \sum_{k} P_{ik}(t)P_{ks}(s)$

Remark: the proof is similar to the discrete case by using law of total probability
and conditioning on the state at time $t$ and then using homogeneity to simplify the
conditioning probability into $P_{ks}(s)$.

**Backward Equations**. $\displaystyle P_{ij}'(t) = \left(\sum_{k\neq j} q_{ik}P_{kj}(t)\right) - v_{i}P_{ij}(t)$

**Forward Equations**. $\displaystyle P_{ij}'(t) = \left(\sum_{k\neq j} P_{ik}(t)q_{kj}\right) - v_i P_{ij}(t)$

## Limiting Probabilities

The limiting probability of $j$ is given by $P_j = \lim_{t\to\infty} P_{ij}(t)$.

- If the chain is positive recurrent and finite, then the limiting probabilities are unique and are the long-run proportion times spent in each state.
- It is sufficient to simply have the embedded discrete-time chain be irreducible and finite.
- Limiting probabilities must satisfiy the **balance equations**:

$$v_{j}P_{j} = \sum_{k\neq j} q_{kj}P_{k}\quad \text{and}\quad \sum_{j} P_j = 1$$

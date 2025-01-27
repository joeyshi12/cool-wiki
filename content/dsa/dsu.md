---
title: "Disjoint Set Union"
subtitle: "[Return home](/)"
---

A disjoint set union is an ADT for managing an equivalence relation over a collection of elements.
Given a disjoint set `dsu`, we add the relationship `x ~ y` by `dsu.union(x, y)` and
we check `x ~ y` by `dsu.find(x) == dsu.find(y)`.

## Implementation

A simple DSU can be implemented with a list of integers if the size is fixed.

```python
class DisjointSetUnion:
    """Disjoint set union implementation with a fixed array of ints"""

    def __init__(self, size: int):
        self.parents = [-1] * size

    def find(self, key: int):
        if self.parents[key] == -1:
            return key
        self.parents[key] = self.find(self.parents[key])
        return self.parents[key]
    
    def union(self, key1: int, key2: int):
        root1 = self.find(key1)
        root2 = self.find(key2)
        if root1 == root2:
            return
        self.parents[root1] = root2
```

Another implementation can be done with a dictionary to allow string keys and a variable set size.

```python
class DisjointSetUnion:
    """Disjoint set union implementation with a dictionary"""

    def __init__(self):
        self.parents = {}

    def find(self, key: str):
        if key not in self.parents:
            return key
        self.parents[key] = self.find(self.parents[key])
        return self.parents[key]
    
    def union(self, key1: str, key2: str):
        root1 = self.find(key1)
        root2 = self.find(key2)
        if root1 == root2:
            return
        self.parents[root1] = root2
```

## Applications

- Kruskal's algorithm
    - Find the minimum spanning tree of a weighted graph.
    - [Find redundant edges](https://leetcode.com/problems/redundant-connection/)
- [Lexographically smallest array by swapping congruent elements](https://leetcode.com/problems/make-lexicographically-smallest-array-by-swapping-elements/)

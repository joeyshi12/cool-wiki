---
title: "Priority Queue"
subtitle: "[Return home](/)"
---

A priority queue is an ADT that supports element insertion and retrieval based on priority.
A min-heap, max-heap is one way of implementing a min-priority queue, max-priority queue respectively.

## Implementation

```python
class MinHeap:
    def __init__(self, heap: list[int]):
        self.heap = heap
        for i in range(len(heap) - 1, 0, -1):
            self.__min_heapify_up(i)

    def peek(self):
        return self.heap[0]

    def insert(self, num: int):
        self.heap.append(num)
        self.__min_heapify_up(len(self.heap) - 1)

    def pop(self):
        if len(self.heap) <= 1:
            return self.heap.pop()
        self.heap[0], self.heap[-1] = self.heap[-1], self.heap[0]
        min_element = self.heap.pop()
        self.__min_heapify_down(0)
        return min_element

    def __min_heapify_up(self, i: int):
        while i > 0:
            parent = (i - 1) // 2
            if self.heap[parent] <= self.heap[i]:
                break
            self.heap[parent], self.heap[i] = self.heap[i], self.heap[parent]
            i = parent

    def __min_heapify_down(self, i: int):
        while i < len(self.heap):
            smallest = i
            left = 2 * i + 1
            right = 2 * i + 2
            if left < len(self.heap) and self.heap[left] < self.heap[smallest]:
                smallest = left
            if right < len(self.heap) and self.heap[right] < self.heap[smallest]:
                smallest = right
            if smallest == i:
                break
            self.heap[i], self.heap[smallest] = self.heap[smallest], self.heap[i]
            i = smallest
```

## Applications

The [`heapq`](https://docs.python.org/3/library/heapq.html) Python module implements min-heap and max-heap functions.

- Min-heap
    - `heapify(heap) -> None`
    - `heappush(heap, item) -> None`
    - `heappop()`
- Max-heap
    - Change the sign of items before inserting into the heap and change the sign again after popping.

```python
# Create an empty list to represent the max heap
max_heap = []

# Add elements to the heap by negating them
heapq.heappush(max_heap, -10)
heapq.heappush(max_heap, -20)
heapq.heappush(max_heap, -5)
heapq.heappush(max_heap, -30)

# Pop the largest element (negating again to get the original value)
print(-heapq.heappop(max_heap))  # Output: 30
print(-heapq.heappop(max_heap))  # Output: 20
```

For objects, either define override `__lq__` in the class to define an order or
push objects in tuple pairs, where the first element is the priority value.

**Note**: tuple comparison breaks if priorities are equal.

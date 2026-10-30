---
title: "Unnamed tricks #1 — count per element, not per subarray"
published: 2026-10-30
description: "Placeholder. Replace with a one- or two-sentence summary."
tags: [counting, expected-value]
category: Algorithms
draft: false
---

<!-- Placeholder post. Replace every TODO, or delete this file. -->

## Statement

TODO: state the trick in one or two lines.

$$
\sum_{\text{subarrays } S} \sum_{i \in S} w_i \;=\; \sum_{i=1}^{n} w_i \cdot i\,(n - i + 1)
$$

## Why it works (two sentences)

TODO: first sentence.
TODO: second sentence.

## When it applies

- TODO: condition 1.
- TODO: condition 2.

## Problems

1. TODO: problem name and link — one line on how the trick applies.
2. TODO
3. TODO

## Pitfalls

- TODO

## Math examples (delete this section)

Inline math goes between single dollar signs: sorting takes $O(N \log N)$, and a root path crosses at most $\lfloor \log_2(N+1) \rfloor - 1$ light edges.

Subscripts next to text: compare $a_i$ and $a_j$ for every pair $i < j$.

Expected value: $\mathbb{E}[X] = \sum_{i} \Pr[X_i = 1]$ by linearity, even when the $X_i$ are dependent.

Absolute value and sets: for a subset $S \subseteq \{1, \dots, n\}$ with $|S| = k$, there are $\binom{n}{k}$ choices.

A literal dollar sign is escaped: the item costs \$5.

| Quantity | Value |
| --- | --- |
| Light edges on a path | $\le 2\lfloor \log_2(N+1) \rfloor - 1$ |
| Subset size | $\lvert S \rvert$ (inside tables use `\lvert ... \rvert`; a bare pipe character splits the cell) |

Display math goes between double dollar signs on their own lines:

$$
f(n) =
\begin{cases}
1 & n = 0 \\
n \cdot f(n-1) & n > 0
\end{cases}
$$

$$
\begin{aligned}
\sum_{l \le r} \max(a_l, \dots, a_r)
  &= \sum_{i=1}^{n} a_i \cdot (i - L_i)(R_i - i)
\end{aligned}
$$

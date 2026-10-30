---
title: "Heavy-Light Decomposition: plurality vs. majority"
published: 2026-10-31
description: "Pick the largest child or require more than half? Both give O(log N) light edges per root path."
tags: [trees, hld]
category: Algorithms
draft: false
---

## Background

**Heavy-Light Decomposition(HLD)** is a common technique to process path queries and updates on trees in competitive programming.

If the operation is easy and there is no update, only LCA is sufficient to process path queries.

For example, if `query(a,b)` means "Calculate the sum of integer values from node `a` to node `b`", then we can solve it using sparse table in $O((N + Q) \log{N})$.

However, HLD is useful in these cases:
1. There are point updates, or even range updates exist.
2. Dynamic Tree DP - There are updates, and after every update we need to re-calculate the `dp[root]`.
3. HLRecDP - Out of scope here.

HLD's idea: There is a method, which can decompose every path to $O(\log{N})$ disjoint contiguous segments, so on each segment we can use a data structure supports range queries/updates, like a segment tree.

In this article, I will focus on finding that method and proof, not on implementations or applications.

## The common method

Suppose we have a rooted tree. We can choose exactly one child edge, which has **maximum** subtree size among all children for every non-leaf node. Let's define selected edges are **heavy edges**, and others are **light edges**.

Then the entire tree decomposed into disjoint heavy paths. Every node is contained in exactly one heavy path.

Claim: For every path from root to arbitrary node, that path always decomposed into $O(\log{N})$ heavy paths.

Proof:
1. Light edge means that child's subtree size is at most (this node's subtree size - 1)/2. It's because heavy child's subtree size is at least light child's subtree size.
2. Therefore, if we go down from the root to arbitrary node, there are always at most $\lfloor \log_{2}{(N+1)} \rfloor - 1$ light edges.
3. So we can decompose the path into $\lfloor \log_{2}{(N+1)} \rfloor$ heavy paths.

So we can decompose every path into at most $2 \lfloor \log_{2}{(N+1)} \rfloor - 1$ heavy paths. ($-1$ is because of sharing the LCA)

## Majority of subtree size?

If we replace the keyword "maximum" with **majority**, this also gives the same bound.

The only different thing is, some nodes can have zero heavy child edge. This not ruins prior claim and proof, so exactly same logic can be applied.

However, from maximum to majority, total heavy path count will be monotonically increased, so maximum is slightly better than majority even though they have same upper bound.
# Elixir Bug: Unexpected List Modification During Enum.each

This repository demonstrates a common Elixir error involving attempting to modify a list while iterating over it using `Enum.each`. The issue arises because `Enum.each` does not allow for modifying the collection being iterated. The solution demonstrates how to properly handle this scenario using alternative methods such as `Enum.filter` or recursion.

## Bug Description
The provided `bug.ex` code attempts to remove the element `3` from a list while iterating through it using `Enum.each`. This leads to incorrect list modification.
#!/usr/bin/env ruby

File
  .readlines(__dir__ + "/../input.txt")
  .map { _1.split.map(&:to_i) }
  .transpose
  .map(&:sort)
  .then { _1.zip _2 }
  .map { |a, b| (a - b).abs }
  .sum
  .then { puts _1 }

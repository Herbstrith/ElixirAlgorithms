defmodule Algorithms.DP.LongestCommonSubsequenceTest do
  alias Algorithms.DP.LongestCommonSubsequence, as: LongestCommonSubsequence

  use ExUnit.Case, async: true

  test "Should get LCS for the strings AGCAT and GAC" do
    assert LongestCommonSubsequence.lcs("AGCAT", "GAC") == { 2, "AC" }
  end

  test "Should get LCS for the strings AGGTAB and GXTXAYB" do
    assert LongestCommonSubsequence.lcs("GXTXAYB", "AGGTAB") == { 4, "GTAB" }
  end

  test "Should get LCS for the strings AAAAAAA and AABAAABAA" do
    assert LongestCommonSubsequence.lcs("AAAAAAA", "AABAAABAA") == { 7, "AAAAAAA" }
  end

  test "Should get LCS for the strings ' ' and AABAAABAA" do
    assert LongestCommonSubsequence.lcs("", "AABAAABAA") == { 0, "" }
  end

  test "Should get LCS for two empty strings" do
    assert LongestCommonSubsequence.lcs("", "") == { 0, "" }
  end

  test "Should get LCS for the strings ABCDE and FGHIJ" do
    assert LongestCommonSubsequence.lcs("ABCDE", "FGHIJ") == { 0, "" }
  end

  test "Should get LCS for the strings A and CDEFABCDA" do
    assert LongestCommonSubsequence.lcs("A", "CDEFABCDA") == { 1, "A" }
  end
end

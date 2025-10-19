#include <gtest/gtest.h>
#include <algorithm>
#include "solution.h"

TEST(TwoSumTest, Example1) {
    Solution solution;
    std::vector<int> nums = {2, 7, 11, 15};
    int target = 9;
    std::vector<int> expected = {0, 1};
    
    std::vector<int> result = solution.twoSum(nums, target);
    
    ASSERT_EQ(result.size(), 2);
    // 由于哈希表的实现，结果的顺序可能不同，所以我们需要排序后比较
    std::sort(result.begin(), result.end());
    std::sort(expected.begin(), expected.end());
    EXPECT_EQ(result, expected);
}

TEST(TwoSumTest, Example2) {
    Solution solution;
    std::vector<int> nums = {3, 2, 4};
    int target = 6;
    std::vector<int> expected = {1, 2};
    
    std::vector<int> result = solution.twoSum(nums, target);
    
    ASSERT_EQ(result.size(), 2);
    std::sort(result.begin(), result.end());
    std::sort(expected.begin(), expected.end());
    EXPECT_EQ(result, expected);
}

TEST(TwoSumTest, Example3) {
    Solution solution;
    std::vector<int> nums = {3, 3};
    int target = 6;
    std::vector<int> expected = {0, 1};
    
    std::vector<int> result = solution.twoSum(nums, target);
    
    ASSERT_EQ(result.size(), 2);
    std::sort(result.begin(), result.end());
    std::sort(expected.begin(), expected.end());
    EXPECT_EQ(result, expected);
}

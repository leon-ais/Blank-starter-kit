#ifndef SOLUTION_H
#define SOLUTION_H

#include <vector>
#include <unordered_map>

/**
 * @brief 通用解决方案类
 *
 * 此类包含各种算法问题的解决方案，
 * 作为算法练习和学习的基础模板。
 */
class Solution {
public:
    /**
     * @brief 查找数组中和为目标值的两个数的索引
     *
     * @param nums 输入数组
     * @param target 目标和
     * @return std::vector<int> 包含两个索引的数组
     */
    std::vector<int> twoSum(std::vector<int>& nums, int target);

    /**
     * @brief 示例函数 - 演示如何添加新的解决方案
     *
     * @param nums 输入数组
     * @return int 计算结果
     */
    int exampleFunction(const std::vector<int>& nums);
};

#endif // SOLUTION_H

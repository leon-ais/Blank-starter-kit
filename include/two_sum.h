#ifndef TWO_SUM_H
#define TWO_SUM_H

#include <vector>
#include <unordered_map>

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
};

#endif // TWO_SUM_H
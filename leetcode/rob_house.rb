# https://leetcode.com/problems/house-robber/
#
def rob(nums)
  return nums.first if nums.size == 1
  [nums.first + rob_from(nums[2..-2]), nums[1] + rob_from(nums[3..])].max
end
def rob_from(nums, left=0, calculated = Hash.new)
  return nums[left] if left == (nums.size - 1)
  return 0 if left >= nums.size
  return calculated[left] if calculated[left]
  max_curr = [nums[left] + rob_from(nums, left + 2, calculated), nums[left+1] + rob_from(nums, left+3, calculated)].max
  calculated[left] = max_curr
  max_curr
end
nums = [2,7,9,3,1]
rob nums
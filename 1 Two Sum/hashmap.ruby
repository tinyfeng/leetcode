# Runtime: 32 ms, faster than 92.49% of Ruby online submissions for Two Sum.

# Memory Usage: 10 MB, less than 27.27% of Ruby online submissions for Two Sum.
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, idx|
    other_num = target - num
    other_num_idx = hash[other_num]
    return [other_num_idx, idx] if other_num_idx

    hash[num] = idx
  end
  []
end

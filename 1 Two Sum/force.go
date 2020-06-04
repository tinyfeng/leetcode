func twoSum(nums []int, target int) []int {
	var result []int
	length := len(nums)
	for idxI, i := range nums {
		idxJStart := idxI + 1
		for idxJ, j := range nums[idxJStart:length] {
			if i + j == target {
				result = append(result, idxI)
				result = append(result, idxJ + idxJStart)
				return result
			}
		}
	}
	return result
}

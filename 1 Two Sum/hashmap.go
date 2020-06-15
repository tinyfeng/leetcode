// Runtime: 4 ms, faster than 92.74% of Go online submissions for Two Sum.

// Memory Usage: 3.8 MB, less than 11.54% of Go online submissions for Two Sum.
func twoSum2(nums []int, target int) []int {
	hash := make(map[int]int)
	for idx, e := range nums {
		otherNum := target - e
		otherIdx, ok := hash[otherNum]
		if ok {
			return []int{idx, otherIdx}
		}
		hash[e] = idx
	}
	return []int{}
}

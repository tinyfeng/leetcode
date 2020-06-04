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

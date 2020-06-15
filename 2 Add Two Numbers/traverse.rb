# Runtime: 68 ms, faster than 33.33% of Ruby online submissions for Add Two Numbers.
# Memory Usage: 9.7 MB, less than 76.05% of Ruby online submissions for Add Two Numbers.
#
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = get_num(l1) + get_num(l2)
  gen_list sum.to_s
end

def get_num(l, num_str = '')
  l.next.nil? ? (l.val.to_s << num_str.to_s).to_i : get_num(l.next, l.val.to_s << num_str.to_s)
end

def gen_list(num_str)
  l = ListNode.new
  _l = l
  num_str.reverse.split('').each_with_index do |i, idx|
    _l.val = i
    if idx < (num_str.length - 1)
      new_l = ListNode.new
      _l.next = new_l
    end
    _l = new_l
  end
  l
end

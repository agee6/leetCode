def linked_list_sum(l1, l2)
  list = ListNode.new(nil)
  currentNode = list
  carry = 0
  while(l1 && l2)
    current = l1.val + l2.val + carry
    currentNode.val = current % 10
    carry = current / 10
    if(l1.next || l2.next)
      currentNode.next = ListNode.new(nil)
      currentNode = currentNode.next
    end
    l1 = l1.next
    l2 = l2.next
  end
  while(l1)
    current = l1.val + carry
    currentNode.val = current % 10
    carry = current / 10
    if(l1.next)
      currentNode.next = ListNode.new(nil)
      currentNode = currentNode.next
    end
    l1 = l1.next
  end
  while(l2)
    current = l2.val + carry
    currentNode.val = current % 10
    carry = current / 10
    if(l2.next)
      currentNode.next = ListNode.new(nil)
      currentNode = currentNode.next
    end
    l2 = l2.next
  end
  if(carry > 0)
    currentNode.next = ListNode.new(carry)
  end
  list
end

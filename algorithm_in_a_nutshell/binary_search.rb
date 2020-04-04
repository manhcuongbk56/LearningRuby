def search(n, low, high)
  turn = 0
  while high >= low
    turn += 1
    mid = (low + high)/2
    return turn if mid == n
    if mid < n
      low = mid + 1
    else
      high = mid - 1
    end
  end
  turn
end
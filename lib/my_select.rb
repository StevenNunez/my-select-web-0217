def my_select(collection)
  selected = []
  my_each(collection) do |item|
    if yield(item)
      selected << item
    end
  end
  selected
end

def my_each(items) # put argument(s) here
  length = items.size
  i = 0
  while i < length
    yield items[i]
    i += 1
  end
  items
end

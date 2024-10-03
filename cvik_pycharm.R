IndexOfMin = function(array,first,last){
  index = first
  for(k in (first + 1):last){
    if(array[k] < array[index]){
      index = k
    }
  }
  return (index)
}
#t_c = n

SelectionSort = function(array,n){
  for (i in 1:(n-1)){
    j = IndexOfMin(array,i,n) # n^2-1
    temp = array[i]
    array[i] = array[j]
    array[j] = temp
  }
  return(array)
}

x= c(1,-1,2,0,4,-20102,2,150,0)

SelectionSort(x,length(x))

#t_c = O(n^2)


RecursiveSelectionSort = function(array,first,last){
  if(first<last){
    index = IndexOfMin(array,first,last) #n
    temp = array[first]
    array[first] = array[index]
    array[index] = temp
    array = RecursiveSelectionSort(array,first+1,last) # n^2
}
  return (array)
}

RecursiveSelectionSort(x,1,length(x))

#t_c = n(n+1)/2 = O(n^2)
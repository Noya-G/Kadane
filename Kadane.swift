func Kadane(array: [Int]) -> [Int]
{
    var Sum=0 ,curr_sum=0 , curr_start=0,start_index=0, end_Index=0
    for i in 0...(array.count-1)
    {
        curr_sum += array[i]
        if(curr_sum>Sum)
        {
           Sum=curr_sum
            end_Index=i
            start_index=curr_start
        }
        if(curr_sum<0)
        {
            curr_start=i+1
            curr_sum=0
        }
    }
    return [Sum,start_index,end_Index]
}

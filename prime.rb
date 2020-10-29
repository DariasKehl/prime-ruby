def prime?(num)
  sieve = (0..num).to_a
  ## holy fuck this makes a lot of output puts sieve
  sieve[0]=nil
  sieve[1]=nil
  max_num = num

  (num/2+1).times do |n|
    if(sieve[n]!=nil) then
        cnt=2*n
        while cnt <= max_num do
            sieve[cnt]=nil
            cnt+=n
        end
    end
  end
  sieve.compact!
  return sieve.include?(num)
end

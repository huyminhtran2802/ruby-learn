=begin
Prompt:
You are climbing a staircase. It takes n steps to reach the top.
Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
Constraint:
1 <= n <= 45
=end

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    dp = Array.new(n+1)
    
    return 1 if n == 0 || n == 1
    return 2 if n == 2
    
    dp[0] = 1
    dp[1] = 1
    dp[2] = 2
    for i in 3..n do
        dp[i] = dp[i-1] + dp[i-2]
    end
    return dp[n]
end
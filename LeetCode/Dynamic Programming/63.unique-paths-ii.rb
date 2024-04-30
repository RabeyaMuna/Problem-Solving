# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(obstacle_grid)
    m = obstacle_grid.size
    n = obstacle_grid[0].size
    dp = Array.new(m,0) { Array.new(n, 0) }

   return 0  if obstacle_grid[0][0] == 1 || obstacle_grid[-1][-1] == 1

    m.times do |i|
      n.times do |j|
        if obstacle_grid[i][j] == 1
           dp[i][j] = 0 
        elsif i == 0 && j == 0 && obstacle_grid[i][j] == 0
          dp[i][j] = 1
        elsif i == 0 && j > 0 && obstacle_grid[i][j] == 0
          dp[i][j] = dp[i][j-1]
        elsif j == 0 && i > 0 && obstacle_grid[i][j] == 0
          dp[i][j] = dp[i-1][j]  
        else
          dp[i][j] = dp[i-1][j] + dp[i][j-1]
        end
      end
    end

    return dp[m-1][n-1]
end

//
//  200.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/04.
//

import Foundation

//방법1
class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var result: Int = 0 // 섬의 갯수
        let dx: [Int] = [1, -1, 0, 0] //x축 방향으로 오,왼
        let dy: [Int] = [0, 0, 1, -1] //y축 방향으로 위, 아래
        // 방문 체크 배열
        var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
        // 해당 [x][y]와 연결 되어 있는 land를 체크하는 dfs 함수
        // 상하좌우 4번을 탐색한다.
        func dfs(_ x: Int, _ y: Int) {
            for i in 0..<4 {
                let nx: Int = x + dx[i]
                let ny: Int = y + dy[i]
                // 맵의 바깥 범위의 경우 건너뛴다.
                if nx < 0 || ny < 0 || nx >= grid.count || ny >= grid[0].count {
                    continue
                }
                // 맵이 땅이 아니거나 이미 방문한 곳이라면 건너뛴다.
                if grid[nx][ny] == "0" || visited[nx][ny] {
                    continue
                }
                // 방문 체크를 해주고 [nx][ny]로 넘어가서 다시 dfs 체크한다.
                visited[nx][ny] = true
                dfs(nx, ny)
            }
        }
        // 맵이 land이고 아직 방문하지 않은 곳이면 dfs 함수를 호출한다.
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == "1" && !visited[i][j] {
                    result += 1
                    visited[i][j] = true
                    dfs(i, j)
                }
            }
        }
        return result
    }
}

//방법 2
class Solution{
    func numIslands(_ grid: [[Charater]]) -> Int {
        //재귀 사용해서 해결
        if grid.isEmpty {return 0}
        
        var grid = grid
        var numOfIslands = 0
        
        for i in 0..<grid.count{
            for j in 0..grid[i].count{
                if grid[i][j] == "1" {
                    //여기서 재귀 실행
                    numOfIslands += count(&grid, i, j)
                }
            }
        }
        
        return numOfIslands
    }
    //수직,수평으로 계산해야 되므로 inout 사용
    private func count(_grid: inout [[Character]], _ i: Int, _ j: Int) -> Int{
        //범위 잡아주기
        if i < 0 || i >= grid.count || j <0 || j >= grid.count {return 0}
        
        if grid[i][j] == "0" {return 0}
        
        //이미 지나간 1 더블 카운트 피하기 위해서 0으로 바꿔준다.
        grid[i][j] == "0"
        
        count(&grid, i+1, j)
        count(&grid, i-1, j)
        count(&grid, i, j+1)
        count(&grid, i, j-1)
        
        //위를 다 만족하면 섬이니까 1을 추가할 수 있도록 1을 반환한다.
        return 1
    }
}

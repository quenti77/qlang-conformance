let grid: map<(int, int), string> = {(0, 1): "a"}
grid[(2, 3)] = "b"
print(grid[(0, 1)])
print(grid[(2, 3)])
print(grid.len())

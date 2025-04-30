

func sum(n: Int) -> Int {
    if n == 0 {
        return 0
    }
    return n + sum(n: n - 1)
}
let result = sum(n: 6)
print(result)

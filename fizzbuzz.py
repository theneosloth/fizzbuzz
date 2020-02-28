def classic_fizzbuzz(n):
    for i in range (1,n+1):
        result = ""
        if (i % 3 == 0):
            result += "fizz"
        elif (i % 5 == 0):
            result += "buzz"

        print(result or i, end=' ')
    print()

def fizz_or_buzz(n):

    if n == 0:
        return 0

    result = ""
    if n % 3 == 0:
        result += "fizz"

    if n % 5 == 0:
        result += "buzz"

    if not result:
        result += str(n)

    return result

def map_fizzbuzz(n):
    return " ".join(map(fizz_or_buzz, range(1, n+1)))

def list_comprehension_fizzbuzz(n):
    return " ".join([fizz_or_buzz(i) for i in range(1,n+1)])

def unreadable_fizzbuzz (n):
    return " ".join(
        [['', '', 'fizz', '', 'buzz', 'fizz', '', '', 'fizz', 'buzz', '', 'fizz', '', '', 'fizzbuzz'][(i-1)%15] or str(i)
         for i in range(1,n+1)])


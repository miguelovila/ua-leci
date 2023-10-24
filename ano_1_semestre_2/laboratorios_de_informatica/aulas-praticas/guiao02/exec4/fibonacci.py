def fibonacci(n=None):
    if n is None: return ['NoArgs']
    if not isinstance(n, int): return ['NAN']
    if n < 1:
        if n == 0: return [0]
        if n <  0: return []
    elif n == 1:
        return [0]
    elif n == 2:
        return [0, 1]
    else:
        return fibonacci(n-1) + [fibonacci(n-1)[-1] + fibonacci(n-2)[-1]]
    return fibonacci
import pytest
from fibonacci import fibonacci

def test_inferior_1():
    print("Testa comportamento com n < 1")
    assert fibonacci(0) == [0]
    assert fibonacci(-1) == []
    assert fibonacci(-10) == []

def test_igual_1():
    print("Testa comportamento com n = 1")
    assert fibonacci(1) == [0]

def test_superior_1():
    print("Testa comportamento com n > 1")
    assert fibonacci(2) == [0, 1]
    assert fibonacci(3) == [0, 1, 1]
    assert fibonacci(4) == [0, 1, 1, 2]
    assert fibonacci(5) == [0, 1, 1, 2, 3]
    assert fibonacci(6) == [0, 1, 1, 2, 3, 5]
    assert fibonacci(7) == [0, 1, 1, 2, 3, 5, 8]
    assert fibonacci(8) == [0, 1, 1, 2, 3, 5, 8, 13]
    assert fibonacci(9) == [0, 1, 1, 2, 3, 5, 8, 13, 21]
    assert fibonacci(10) == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
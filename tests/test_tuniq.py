import tuniq
import pytest

def test():
    a_list = [1, 3, 4, 5, 8, 4, 6, 2, 7, 2, 5, 3]
    u_list = tuniq.unique(a_list)
    print(u_list)
    ## should give [1,3,4,5,8,6,2,7]
    assert u_list == [1, 3, 4, 5, 8, 6, 2, 7]


if __name__ == "__main__":
    pytest.main()

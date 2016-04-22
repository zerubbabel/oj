Problem D - Maximum Product
Time Limit: 1 second
 
 

Given a sequence of integers S = {S1, S2, ..., Sn}, you should determine what is the value of the maximum positive product involving consecutive terms of S. If you cannot find a positive sequence, you should consider 0 as the value of the maximum product.

Input
Each test case starts with 1 ≤ N ≤ 18, the number of elements in a sequence. Each element Si is an integer such that -10 ≤ Si ≤ 10. Next line will have N integers, representing the value of each element in the sequence. There is a blank line after each test case. The input is terminated by end of file (EOF).

Output
For each test case you must print the message: Case #M: The maximum product is P., where M is the number of the test case, starting from 1, and P is the value of the maximum product. After each test case you must print a blank line.

Sample Input
3
2 4 -3

5
2 5 -1 2 -1

Sample Output
Case #1: The maximum product is 8.

Case #2: The maximum product is 20.

最大乘积（Maximum Product，UVa 11059）
题目链接：http://acm.hust.edu.cn/vjudge/contest/view.action?cid=84562#problem/B

题意：

      输入n个元素组成的序列S，找出一个乘积最大的连续子序列。如果这个最大的乘积不是正数，输出0(表示无解)。1<=n<=18，-10<=Si<=10。每一个案例之间用空白行分隔，案例输出要求输出"Case #M: The maximum product is P.",其中M为案例号，P为乘积值。

案例：

        Sample Input

        3

        2 4 -3

 

        5

        2 5 -1 2 -1

        Sample Output

        Case #1: The maximum product is 8.

 

        Case #2: The maximum product is 20.

分析：

       连续的子序列有两个要素，即起点和终点，因此只需枚举起点和终点即可，由于至多18个元素且绝对值不超过10，最大乘积不超过10的18次方，可以使用long long型存储。
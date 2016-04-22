Problem D - Maximum Product
Time Limit: 1 second
 
 

Given a sequence of integers S = {S1, S2, ..., Sn}, you should determine what is the value of the maximum positive product involving consecutive terms of S. If you cannot find a positive sequence, you should consider 0 as the value of the maximum product.

Input
Each test case starts with 1 �� N �� 18, the number of elements in a sequence. Each element Si is an integer such that -10 �� Si �� 10. Next line will have N integers, representing the value of each element in the sequence. There is a blank line after each test case. The input is terminated by end of file (EOF).

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

���˻���Maximum Product��UVa 11059��
��Ŀ���ӣ�http://acm.hust.edu.cn/vjudge/contest/view.action?cid=84562#problem/B

���⣺

      ����n��Ԫ����ɵ�����S���ҳ�һ���˻��������������С����������ĳ˻��������������0(��ʾ�޽�)��1<=n<=18��-10<=Si<=10��ÿһ������֮���ÿհ��зָ����������Ҫ�����"Case #M: The maximum product is P.",����MΪ�����ţ�PΪ�˻�ֵ��

������

        Sample Input

        3

        2 4 -3

 

        5

        2 5 -1 2 -1

        Sample Output

        Case #1: The maximum product is 8.

 

        Case #2: The maximum product is 20.

������

       ������������������Ҫ�أ��������յ㣬���ֻ��ö�������յ㼴�ɣ���������18��Ԫ���Ҿ���ֵ������10�����˻�������10��18�η�������ʹ��long long�ʹ洢��
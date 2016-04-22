UVA725	Division （暴力求解法入门）

#include <cstdio>
#include <cstring>
#include <algorithm>
using namespace std;
bool com(char a, char b)
{
    return a>b;
}
char ans[11]="9876543210";
char s[11];
int main()
{
    int n, pro, m=0;
    bool flag=false;
    while(scanf("%d", &n)!=EOF&&n)
    {
        if(m>0) printf("\n");
        m++;//输出技巧
        flag=false;
        for(int i=1234; i<=50000; i++)
        {
            pro=n*i;
            if(pro>98765)  break;
            if(i<10000)
                sprintf(s, "%d%d%d", 0, i, pro);
            else
                sprintf(s, "%d%d", i, pro);
            sort(s, s+10, com);
            if(strcmp(s, ans)==0)
            {
                printf("%d / %05d = %d\n", pro, i, n);
                flag=true;
            }
        }
        if(!flag)
            printf("There are no solutions for %d.\n", n);
    }
    return 0;
}
 

这题属于入门级暴力求解法。在进行暴力求解枚举时，我们应该进行适当的分析。比如这一题，两个五位数都可以有前导零。我们可以分析一下被除数是不可能前导零的。证明很容易，假设被除数有前导零，说明被除数只是四位数，那么除数必须要五位数，很明显不合题意，因为N>=2； 
在进行枚举时，我们可以发现被除数枚举到50000即可（还可以更小，但感觉50000已经优化的可以了）。一旦n*i大于被除数，即可终止for循环。 
这是用到的技巧的输出技巧，sprintf,sort; 
不得不说，UVA是很严格的，我第一次提交时WA，后来debug是发现我答案多了一行空格。空格处理方法见代码。 
我的主要思路是把含有前导零的除数和不含有前导零的除数分开处理。输入到字符数组里，然后sort排序。先定义一个0-9的字符数组（已经排好序列），然后用strcmp比较即可，我感觉我的这种方法比网上的其他代码简洁而且比较好理解。如有不同见解，请在评论中告知。
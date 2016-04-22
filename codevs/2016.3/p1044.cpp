//DP+Dilworth定理
using namespace std;
#include<iostream>
#include<cstdio>
#include<cstdlib>
#include<cstring>
#include<string>
#include<cmath>
#include<ctime>
#include<iomanip>
#include<algorithm>
#define maxn 50+10

int a[maxn],f[maxn],t[maxn];
int cnt,m1,m2;

int main()
{

    
    cnt=1;
    while(cin>>a[cnt])
    {
    
        f[cnt]=t[cnt]=1;    cnt++;
    }
    cnt--;
    
    m1=m2=1;
    for(int i=1;i<=cnt;i++)
    {
        for(int j=1;j<i;j++)
        {
            if(a[j]>=a[i])
            {
                if(f[j]+1>f[i])
                  f[i]=f[j]+1;
                if(m1<f[i])
                  m1=f[i];
            }
            else if(a[j]<a[i])//反链
            {
                if(t[j]+1>t[i])
                  t[i]=t[j]+1;
                if(m2<t[i])
                  m2=t[i];
            }
        }
    }
    
    cout<<m1<<endl<<m2<<endl;
    
    
    return 0;
}
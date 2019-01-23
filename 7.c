#include<stdio.h>
int main()
{
int a[6];
int *p;
int i;
int sum=0;
p=a;
for(i=0;i<6;i++)
{
sum+=*p;
p++;
}
}

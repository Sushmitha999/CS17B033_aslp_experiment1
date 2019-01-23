#include<stdio.h>
int main()
{
int a[5]={1,2,3,4,5};
int b[5]={6,7,8,9,0};
int i,temp;
for(i=0;i<5;i++)
{
temp=a[i];
a[i]=b[i];
b[i]=temp;
}
return 0;
}

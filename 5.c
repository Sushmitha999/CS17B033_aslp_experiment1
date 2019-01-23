#include<stdio.h>
int main()
{
int a[5]={1,4,3,2,7};
int i;register 
int min=a[0];
int max=a[0];
for(i=0;i<5;i++)
{
if(min>a[i])
min=a[i];
}
for(i=0;i<5;i++)
{
if(max<a[i])
max=a[i];
}
}

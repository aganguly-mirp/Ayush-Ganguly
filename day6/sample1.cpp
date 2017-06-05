#include<iostream>
using namespace std;

int main()
{
int x[5]={100,2,3,4,5};
for(int i=0;i<5;i++)
cout<<x[i]<<" ";
char name[50]="my_name";

for(int k=0;k<50;k++)
cout<<name[k];

cin>>name;

for(int j=0;name[j]!='\0';j++)
cout<<name[j];
cout<<endl;
return 0;
}

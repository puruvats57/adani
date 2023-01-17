#include<bits/stdc++.h>
#include<cstdlib>
vector<vector<int>>fun(int rows,int col){
vector<vector<int>>ans;
for(int i=0;i<rows;i++){
for(int j=0;j<col;j++){
ans[i][j]=(rand())%101;
}
}
return ans;
}

//sort function
vector<vector<int>>sorti(vector<vector<int>>list,int c){
vector<pairs<int,int>>arr;
for(int i=0;i<list.size();i++){
arr.push_back(list[i][c],i);
}
sort(arr.begin(),arr.end());
vector<vector<int>>ans;
for(int i=0;i<arr.size();i++){
ans.push_back(list[arr[i].second]);
}
return ans;

}

//main function
int main(){
int rows,col,n;
vector<vector<int>>out;
vector<vector<int>>sor;

//q1
cout<<"enter rows";
cin>>rows;
cout<<"enter columns";
cin>>col;
out=fun(rows,col);   // to make 2-d array
cout<<"2-d array";
//printing 2-d array
for(int i=0;i<rows;i++){
for(int j=0;j<col;j++){
cout<<out[i][j];
}
}

//q2
cout<<"enter column no";
cin>>n;
sor=sorti(out,n);   //sort acc. to column
cout<<"2-d after sorted";
for(int i=0;i<rows;i++){
for(int j=0;j<col;j++){
cout<<sor[i][j];
}
}
}

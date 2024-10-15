#include <algorithm>
#include <array>
#include <vector>
#include <set>
#include <map>
#include <queue>
#include <utility>
#include <stack>
#include <bitset>
#include <iostream>
#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#define db(n) std::cout<<"VAR:"<<#n<<"@"<<&n<<"="<<n<<std::endl;
#define pb push_back
#define ft front()
#define fi first
#define se second
#define mp make_pair
#define F0R(i,a,b) for(int i=(a);i<(B);i++)
#define RA(a,x) for(auto&a:x)
#define si(x) int((x).size())
#define xll(n) n.rbegin(),x.rend()
#define it insert
#define eb emplace_back
constexpr int __b(int r){return 1<<r;}
constexpr int b__(int r){return __b(r)-1;}
using namespace std;
const int MOD = 1e9+7;const int IE = 1e+9;using pi=std::pair<int,int>;using ll=long long;using vi=std::vector<int>;using vl=std::vector<ll>;using str=std::string;int main(void){

      int n;
      int m;
      cin>>n>>m;
      cout<<(n==1||m==1?(m+n)-1:n==2||m==2?(n+m==6||(n+m%4==2)?(n+m)-2:(n+m)/2*2):(n*m+1)/2);

return 0;}

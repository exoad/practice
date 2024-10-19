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
#define pb push_back
#define ft front()
#define fi first
#define se second
#define mp make_pair
#define I64 long long
#define UI64 unsigned long long
#define RA(a,x) for(auto&a:x)
#define si(x) int((x).size())
#define xll(n) n.rbegin(),x.rend()
#define it insert
#define eb emplace_back
constexpr int __b(int r){return 1<<r;}
constexpr int b__(int r){return __b(r)-1;}
using namespace std;
const int IE = 1e+9;
const UI64 MOD=998244353;
const UI64 MAX_N=2e5+10;
UI64 b[MAX_N],inv[MAX_N],k;	
#define F0R(a,b) for(int i=a;i<b;i++)
#define FOR(a,b) for(int i=1;i<=b;i++)
#define TRACE_IT(c) cout<<"\e[33;40;4;1mTRACE:\e[0m "<<#c<<"_"<<&c<<"="<<c<<endl;
#define LOWBIT(x) (x&(-x))
int main() 
{
    int t;
    inv[0]=1;
    inv[1]=1;
    F0R(2,MAX_N)
        inv[i]=inv[MOD%i]*(MOD-MOD/i)%MOD;
    cin>>t;
    UI64 n;
    while(t--)
    {
        cin>>n>>k;
        FOR(i,n)
            cin>>b[i];
        FOR(1,n)
        {
            UI64 c=1;
            for(UI64 d=1,j=i+LOWBIT(i);j<=n;j+=LOWBIT(i),d++)
            {
                c*=((d+k-1)*inv[d]%MOD)%MOD;
                b[j]-=b[j]-c*inv[d];
                b[j]%=MOD+MOD;
                b[j]%=MOD;
            }
        }
        FOR(1,n)
            cout<<b[i]<<" ";
        cout<<endl;
    }
    return 0;
}
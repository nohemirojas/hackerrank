#include <bits/stdc++.h>
//https://www.hackerrank.com/challenges/staircase/problem
using namespace std;

// Complete the staircase function below.
void staircase(int n) {
    int count = 0;
    for(int i=1;i<=n;i++){
        for(int j=i;j<n;j++){
            cout<<" ";
        }
        for(int j=0;j<i;j++){
            cout<<"#";
        }
        cout<<"\n";
    }

}

int main()
{
    int n;
    cin >> n;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    staircase(n);

    return 0;
}

#include <bits/stdc++.h>
//https://www.hackerrank.com/challenges/time-conversion/problem
using namespace std;

/*
 * Complete the timeConversion function below.
 */
string timeConversion(string s) {
     
    string hour = s.substr(0,2);
    string minute = s.substr(2,6);
    string time = s.substr(8,2);
    string result_military = hour;  
    int h = stoi(hour);
    
    if(time=="PM" and h!=12){
        result_military =  to_string(h + 12);
    }
    if(time=="AM" and h==12){
        result_military = "00";
    }

    return result_military + minute;
}

int main()
{
    ofstream fout(getenv("OUTPUT_PATH"));

    string s;
    getline(cin, s);

    string result = timeConversion(s);

    fout << result << "\n";

    fout.close();

    return 0;
}

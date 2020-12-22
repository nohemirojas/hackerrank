#include <bits/stdc++.h>
//https://www.hackerrank.com/challenges/migratory-birds/problem
using namespace std;

string ltrim(const string &);
string rtrim(const string &);
vector<string> split(const string &);

// Complete the migratoryBirds function below.
int migratoryBirds(vector<int> arr) {
    vector<int> aux_arr = {0,0,0,0,0};
    
    for (int i=0; i<arr.size();i++){
        if(arr[i]==1)
            aux_arr[0]++;
        if(arr[i]==2)
            aux_arr[1]++;
        if(arr[i]==3)
            aux_arr[2]++;
        if(arr[i]==4)
            aux_arr[3]++;
        if(arr[i]==5)
            aux_arr[4]++;
    }
    
    int result = aux_arr[0];
    int position = 0;
    
    for (int i=0; i<aux_arr.size(); i++){
        if (aux_arr[i]>result){
            result = aux_arr[i];
            position = i;
        }
    }
    return position+1;
    

}

int main()
{
    ofstream fout(getenv("OUTPUT_PATH"));

    string arr_count_temp;
    getline(cin, arr_count_temp);

    int arr_count = stoi(ltrim(rtrim(arr_count_temp)));

    string arr_temp_temp;
    getline(cin, arr_temp_temp);

    vector<string> arr_temp = split(rtrim(arr_temp_temp));

    vector<int> arr(arr_count);

    for (int i = 0; i < arr_count; i++) {
        int arr_item = stoi(arr_temp[i]);

        arr[i] = arr_item;
    }

    int result = migratoryBirds(arr);

    fout << result << "\n";

    fout.close();

    return 0;
}

string ltrim(const string &str) {
    string s(str);

    s.erase(
        s.begin(),
        find_if(s.begin(), s.end(), not1(ptr_fun<int, int>(isspace)))
    );

    return s;
}

string rtrim(const string &str) {
    string s(str);

    s.erase(
        find_if(s.rbegin(), s.rend(), not1(ptr_fun<int, int>(isspace))).base(),
        s.end()
    );

    return s;
}

vector<string> split(const string &str) {
    vector<string> tokens;

    string::size_type start = 0;
    string::size_type end = 0;

    while ((end = str.find(" ", start)) != string::npos) {
        tokens.push_back(str.substr(start, end - start));

        start = end + 1;
    }

    tokens.push_back(str.substr(start));

    return tokens;
}

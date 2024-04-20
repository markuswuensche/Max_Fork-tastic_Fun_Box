#include <iostream>
#include <string>
using namespace std;

int function1 (string xs, char c){
    int z = 0;
    for (unsigned i = 0; i < xs.length(); i++)
    {
        if (xs[i] == c)
        {
            z++;
        }
    }
    return z;
} 

int main () {
    cout << "hi jules ich mag dich";
    string lol = "wasgehtab";
    char lel = 'a';
    cout << (function1 (lol, lel));
}
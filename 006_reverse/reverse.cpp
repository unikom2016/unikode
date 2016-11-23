#include <iostream>
#include <string.h>

using namespace std;

int main() {
    for (int i = 7; i > 0; i--) {
        for (int j = 0; j < i; j++) {
            cout << i - j;
            if (j != i) {
                cout << " ";
            }
        }
        cout << endl;
    }
}
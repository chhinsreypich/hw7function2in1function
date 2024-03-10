//pich.cpp
#include<iostream>
#include "fruit.h"
#include "store.h"
using namespace std;
int main() {
	store A, B;
	cout << A.apple.name << " price: "<< A.apple.price << " * "<< A.apple.howmany << endl;
	cout << A.pear.name << " price: "<< A.pear.price << " * "<< A.pear.howmany << endl;
	cout << A.peach.name << " price: "<< A.peach.price << " * "<< A.peach.howmany << endl;
	cout << endl;

	float a = A.sub_total(A.apple, A.pear, A.peach);
	
	cout << "SubTotal: $" << a << endl;
	cout << "Tax: $"  << A.tax(a) << endl; 
	A.total_price(a, A.tax(a), 0);

	cout <<  B.mango.name << " shipping: $"<< B.mango.shipping << endl;
	cout <<  B.strawberry.name << " shipping: $"<< B.strawberry.shipping << endl;

	float b = B.sub_total(B.mango, B.strawberry, B.banana);

  cout << "SubTotal: $" << b << endl;
	cout << "Tax: $"  << B.tax(b) << endl;
	B.total_price(b, B.tax(b), B.mango.shipping); 


	return 123;
}
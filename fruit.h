// fruit.h
#pragma once
#include <iostream>
#include <string>
using namespace std;
class fruit {
public:

	// constructor
	fruit() {
		price = 200;
		howmany = 2;
		name = "apple";
	};

	fruit(int n, float p, string s) {
		price = p;
		howmany = n;
		name = s;
	};

	fruit(string n, int m, float p ) {
		price = p;
		howmany = m;
		name = n;
		shipping = 200;
	};

	// member data
	string name;
	float price;
	int howmany;
	float shipping;

	// member function
	void showHowMuchWePay();
	void show_all();
	void show_only_name_and_price();
};
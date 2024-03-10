#include "store.h"
///  total without tax
float store::sub_total(fruit a, fruit b, fruit c ) {
	float sub_total = 0;
	sub_total += a.howmany * a.price;
	sub_total += b.howmany * b.price;
	sub_total += c.howmany * c.price;
	return sub_total;
}

/// only tax
float store::tax(float sub_total){
	float taxes = 0;
	taxes += sub_total * 0.095; //  example: tax 9.5% of things
	return taxes;
}

/// total ( with tax )
void store::total_price(float sub_total, float tax, double shipping ){
	float total ;
	total = sub_total + tax + shipping ;
	cout << "Total:  $" << total << endl;
	cout << endl;
}

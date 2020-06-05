#include <iostream>
#include <stdio.h>
using namespace std;

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len) {
    size_t i;
    for (i = 0; i < len; i++)
		printf(" %.2x", start[i]);
    printf("\n");
}
int main(){
	short sx=-12345;
	unsigned uy=sx;

	printf("uy = %u:\t", uy);
	show_bytes((byte_pointer) &uy, sizeof(unsigned));
	return 0;
}

int tadd_ok(int x,int y){
	int s=x+y;
	if(x>0 && y>0 && s<=0)
		return 1;
	if(x<0 && y<0 && s>=0)
		return 1;
	return 0;
}
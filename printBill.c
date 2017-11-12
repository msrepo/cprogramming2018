#include<stdio.h>
#include<stdlib.h>
#include<string.h>
char temptext[80];

void centerJustifyPrint(int width, char * text){
	int textLength = strlen(text);
	printf("%*s", (width - textLength)/2,"");
	printf("%*s",textLength,text );
	printf("%*s", (width - textLength)/2,"");
}
void centerJustifyPrinti(int width, int text){
	
	sprintf(temptext,"%d",text);
	centerJustifyPrint(width,temptext);
}
void fillWithDash(int width){
	int i;
	for(i = 1; i<=width;i++)
		printf("-");
}
void printAndfillWithDash(int width,char * text){
	printf("%-*s",strlen(text),text);
	fillWithDash(width-strlen(text));
}
void fillWithDots(int width, char * text){
	if(width <0){
		width=-width;
		printf("%-*s",strlen(text),text );
		int i;
		for(i=1;i<=width-strlen(text);i++)
			printf("." );
	}else{
		int i;

		for(i=1;i<=width-strlen(text);i++)
			printf("." );
		printf("%-*s",strlen(text),text );
	}
}
void printLetterHead(){

		printf("%-40s","Seller's PAN No. 86");
	printf("%40s","061-463697");

	printf("\n");

	printf("%-40s","Buyer's PAN No.: ");
	printf("%40s","061-463203");

	printf("\n");

	printf("%28s","" );
	printf("%s","NEPAL MANDALA BOOK SHOP" );
	printf("%28s","" );

	printf("\n");

	printf("%20s","" );
	centerJustifyPrint(40,"Lakeside,Pokhara");
	printf("%20s","PAN:300452057" );

	printf("\n");

	printf("%80s","Date :........." );

	printf("\n");

	printf("%-80s","Bill No.:" );
	printf("\n");

	// printf("%-80s","M/S" );
	fillWithDots(-80,"M/S");
	printf("\n");
}

void printTableHeader(){
	fillWithDash(80);
	printf("\n");
	centerJustifyPrint(5,"S.N.");
	centerJustifyPrint(40,"Description");
	centerJustifyPrint(5,"Qty.");
	centerJustifyPrint(10,"Rate");
	centerJustifyPrint(10,"Discount");
	centerJustifyPrint(10,"Total");
	printf("\n");
	fillWithDash(80);
	printf("\n");
}

void printRow(char * bookname, int qty, int rate, int discount){
	static int i=1;
	printf("%-5i",i );
	printf("%-40s",bookname );
	centerJustifyPrinti(5,qty);
	centerJustifyPrinti(10,rate);
	centerJustifyPrinti(10,discount);
	printf("%10i",rate*(qty-discount) );
	printf("\n");
	fillWithDash(80);
	printf("\n");
	i++;
}
void printTotals(){
	// printf("%-50s","Amount in Words:" );
	printAndfillWithDash(50,"Amount in Words:");
	printf("%20s","Total:" );
	printf("%10i\n","" );
	printf("%50s","" );
	printf("%20s","Advance:" );
	printf("%10i\n","" );
	printf("%50s","" );
	printf("%20s","Balance:" );
	printf("\n");
	fillWithDash(80);
	printf("\n");
	printf("%-50s","*Goods once sold will not be returned." );
	fillWithDash(30);
	printf("\n%80s\n","Signature" );
}
main(){
	
	system("cls");

	printLetterHead();

	printTableHeader();
	printRow("Safety & Sustainability",1,770,0);
	printRow("The Black Economy",1,638,0);
	printRow("How to read a book",1,638,0);
	printTotals();
}

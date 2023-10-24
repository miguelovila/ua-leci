#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <alloca.h>


#include "linked-list.h"

using namespace base;

static Node* list = NULL;

/* ******************************************** */

static void printMenu(void)
{
   printf("\n"
         "+===============================================+\n"
         "|            Manipulation functions             |\n"
         "+===============================================+\n"
         "| 0 --- quit                                    |\n"
         "| 1 --- append new student                      |\n"
         "| 2 --- print list                              |\n"
         "| 3 --- remove student, through number          |\n"
         "| 4 --- get student's name, given the number    |\n"
         "| 5 --- sort list by name                       |\n"
         "| 6 --- sort list by number                     |\n"
         "| 7 --- reset list                              |\n"
         "+===============================================+\n");
}

/* ******************************************** */
/* menu handling functions */
/* ******************************************** */

void menuChoiceAppend()
{
   uint32_t nmec = 0; 
   char *name = (char*) malloc(sizeof(char)*100);

   if (name == NULL) {
      fprintf(stderr, "Error allocating memory for name.\n");
      return;
   }

   printf("Student Number: ");
   if (scanf("%u", &nmec) != 1) {
      fprintf(stderr, "Invalid input for student number.\n");
      free(name);
      return;
   }

   int c;
   while ((c = getchar()) != '\n' && c != EOF);
   printf("Student Name: ");

   if (fgets(name, 100, stdin) == NULL) {
      fprintf(stderr, "Error reading student name.\n");
      free(name);
      return;
   }

   size_t name_length = strlen(name);
   if (name_length > 0 && name[name_length - 1] == '\n') {
      name[name_length - 1] = '\0';
   }

   Node* new_head = append(list, nmec, name);
   if (new_head == NULL) {
      fprintf(stderr, "Error appending to list.\n");
      free(name);
      return;
   }
   list = new_head;

   printf("Added %s (%u)\n", name, nmec);

   free(name);
   return;
}

/* ******************************************** */

void menuChoicePrint()
{
   print(list);
}

/* ******************************************** */

void menuChoiceRemove()
{
   uint32_t nmec = 0;
   printf("Student Number: ");
   if (scanf("%u", &nmec) != 1) {
      fprintf(stderr, "Invalid input for student number.\n");
      return;
   }

   list = remove(list, nmec);
}

/* ******************************************** */

void menuChoiceSearch()
{
   uint32_t nmec = 0;
   printf("Student Number: ");
   if (scanf("%u", &nmec) != 1) {
      fprintf(stderr, "Invalid input for student number.\n");
      return;
   }

   const char* result = search(list, nmec);
   if (strcmp(result, "") == 0) {
      printf("No student found with number %u.\n", nmec);
   } else {
      printf("%u  :  %s\n", nmec, result);
   }
}

/* ******************************************** */

void menuChoiceSortByName()
{
}

/* ******************************************** */

void menuChoiceSortByNumber()
{
}

/* ******************************************** */

void menuChoiceResetList()
{
   list = destroy(list);
}

/* ******************************************** */

/* The main function */
int main()
{
   int terminate = 0;
   while (!terminate)
   {
      printMenu();
      printf("Your command: ");
      int cmd;
      int res = scanf("%d", &cmd);
      if (res != 1)
      {
         fprintf(stderr, "Wrong input format (unsigned integer number required)\n");
         scanf("%*s"); // consume and ignore standard input
      }
      else
      {
         printf("\n");
         switch(cmd) 
         {
            case 0:
               terminate = 1;
               break;
            case 1:
               menuChoiceAppend();
               break;
            case 2:
               menuChoicePrint();
               break;
            case 3:
               menuChoiceRemove();
               break;
            case 4:
               menuChoiceSearch();
               break;
            case 5:
               menuChoiceSortByName();
               break;
            case 6:
               menuChoiceSortByNumber();
               break;
            case 7:
               menuChoiceResetList();
               break;
            default:
               fprintf(stderr, "Wrong action required (%d)\n", cmd);
         }
      }
   }

   list = destroy(list);

   return 0;
}     /* end of main */


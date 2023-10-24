#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>

#include "linked-list.h"

namespace base {

   Node* destroy(Node* list)
   {
      return NULL;
   }

   Node* append(Node* list, uint32_t nmec, char *name)
   {
      Node *n = (Node*) malloc(sizeof(Node));

      if (n == NULL) {
         fprintf(stderr, "Error: %s\n", strerror(errno));
         exit(EXIT_FAILURE);
      }

      n->reg.nmec = nmec;
      n->reg.name = strdup(name);
      n->next = NULL;

      for (Node *p = list; p != NULL; p = p->next) {
         if (p->next == NULL) {
            p->next = n;
            return list;
         }
      }
      return n;
   }

   void print(Node* list)
   {
      for (Node *p = list; p != NULL; p = p->next) {
         printf("%d %s\n", p->reg.nmec, p->reg.name);
      }
   }

   int exists(Node* list, uint32_t nmec)
   {
      return 0;
   }

   Node* remove(Node* list, uint32_t nmec)
   {
      return NULL;
   }

   const char *search(Node* list, uint32_t nmec)
   {
      return NULL;
   }

   Node* sort_by_name(Node* list)
   {
      return NULL;
   }

   Node* sort_by_number(Node* list)
   {
      return NULL;
   }
}

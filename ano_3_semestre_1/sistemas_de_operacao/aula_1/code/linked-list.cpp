#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>

#include "linked-list.h"

namespace base {

   Node* destroy(Node *list)
   {
      Node *node = list;
      Node *next_node = NULL;
      
      while (node != NULL) {
         next_node = node->next;
         free(node->reg.name);
         free(node);
         node = next_node;
      }

      return NULL;
   }

   Node* append(Node *list, uint32_t nmec, char *name)
   {
      if (exists(list, nmec)) {
         fprintf(stderr, "That student ID already exists.\n");
         return NULL;
      }

      Node *new_node = (Node*) malloc(sizeof(Node));

      if (new_node == NULL) {
         fprintf(stderr, "Error allocating memory for Node.\n");
         return NULL;
      }

      new_node->reg.nmec = nmec;
      new_node->reg.name = strdup(name);

      if (new_node->reg.name == NULL) {
         fprintf(stderr, "Error duplicating string.\n");
         free(new_node);
         return NULL;
      }

      new_node->next = NULL;

      if (list == NULL) {
         list = new_node;
         return list;
      }

      for (Node *node = list; node != NULL; node = node->next) {
         if (node->next == NULL) {
            node->next = new_node;
            return list;
         }
      }

      return NULL;
   }

   void print(Node *list)
   {
      for (Node *node = list; node != NULL; node = node->next) {
         printf("%u  :  %s\n",node->reg.nmec, node->reg.name);
         if (node->next == NULL) return;
      }

      fprintf(stderr, "Error printing list: is empty.\n");
      return;
   }

   int exists(Node* list, uint32_t nmec)
   {
      for (Node *node = list; node != NULL ; node = node->next) {
         if (node->reg.nmec == nmec) return 1;
      }

      return 0;
   }

   Node* remove(Node *list, uint32_t nmec)
   {
      Node *prev_node = NULL;
      Node *node = list;

      while (node != NULL) {
         if (node->reg.nmec == nmec) {
            if (prev_node == NULL) {
               list = node->next;
            } else {
               prev_node->next = node->next;
            }

            free(node->reg.name);
            free(node);
            return list;
         }

         prev_node = node;
         node = node->next;
      }

      fprintf(stderr, "Error removing node: node with nmec %u not found.\n", nmec);
      return NULL;
   }

   const char *search(Node* list, uint32_t nmec)
   {
      for (Node *node = list; node != NULL ; node = node->next) {
         if (node->reg.nmec == nmec) return node->reg.name;
      }
      fprintf(stderr, "Node with nmec %u not found.\n", nmec);
      return "";
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

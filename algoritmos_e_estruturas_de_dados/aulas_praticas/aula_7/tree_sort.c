//
// (C) Tomás Oliveira e Silva, AED, January 2021
//

#include <stdio.h>
#include <stdlib.h>
#include "sorting_methods.h"

typedef struct tree_sort_node_s
{
  struct tree_sort_node_s *left;
  struct tree_sort_node_s *right;
  T data;
  // TODO: add a field with the number of repetitions?
}
tree_sort_node_t;

int tree_sort_dump(T *data,int idx,tree_sort_node_t *n)
{
  if(n->left != NULL)
    idx = tree_sort_dump(data,idx,n->left);
  data[idx++] = n->data;
  if(n->right != NULL)
    idx = tree_sort_dump(data,idx,n->right);
  return idx;
}

void tree_sort(T *data,int first,int one_after_last)
{
  if(one_after_last <= first)
    return; // nothing to do
  tree_sort_node_t *n,**nn,*root,*all_nodes;
  int i;

  all_nodes = (tree_sort_node_t *)malloc((size_t)(one_after_last - first) * sizeof(tree_sort_node_t));
  if(all_nodes == NULL)
  {
    fprintf(stderr,"tree_sort: malloc failed\n");
    exit(1);
  }
  all_nodes -= first;
  all_nodes[first].left = all_nodes[first].right = NULL;
  all_nodes[first].data = data[first];
  root = &all_nodes[first];
  for(i = first + 1;i < one_after_last;i++)
  {
    all_nodes[i].left = all_nodes[i].right = NULL;
    all_nodes[i].data = data[i];
    n = root;
    for(;;)
    {
      nn = (data[i] <= n->data) ? &(n->left) : &(n->right); // choose either the left or the right branch
      // TODO: if data[i] == n->data choose the left and right branches with equal probability --- but, for a stable sort, insert on the right
      if(*nn == NULL)
      { // insert the node
        *nn = &all_nodes[i];
        break;
      }
      n = *nn;
    }
  }
  if(tree_sort_dump(data,first,root) != one_after_last)
  {
    fprintf(stderr,"tree_sort: internal error\n");
    exit(1);
  }
  free(all_nodes + first);
}

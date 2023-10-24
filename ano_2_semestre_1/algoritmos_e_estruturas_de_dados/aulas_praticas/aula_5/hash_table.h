//
// Tomás Oliveira e Silva, AED, November 2021
//
// Incomplete implementation of a hash table
// * the key is always a string with at most 63 characters
// * the value is of type T (use a #define or a typedef to define it before including this file)
// * it is only necessary to write code for the find_hash_table_node() and
//   insert_hash_table_node() functions
//
// To simplify things
// * this code uses global variables (not a good programming practice for very large projects) and
//   so the program can only have one hash table
// * it is assumed that the malloc() function does not fail (if it fails, the program will
//   terminate with a segmentation fault
// * the are no functions to free memory
//

typedef struct hash_table_node
{
  char key[64];
  T value;
  struct hash_table_node *next;
}
hash_table_node;

//
// the global variables
//

hash_table_node **hash_table = NULL;
unsigned int hash_table_size = 0u;


//
// hash table creation
//

void init_hash_table(unsigned int desired_hash_table_size)
{
  unsigned int i;

  hash_table_size = desired_hash_table_size;
  if(hash_table_size < 10u)
    hash_table_size = 10u;
  if(hash_table_size > 10000000u)
    hash_table_size = 10000000u;
  hash_table = (hash_table_node **)malloc((size_t)hash_table_size * sizeof(hash_table_node *));
  for(i = 0u;i < hash_table_size;i++)
    hash_table[i] = NULL;
}


//
// allocation of a hash table node
//

hash_table_node *free_hash_table_nodes = NULL; // linked list of free hash table nodes

hash_table_node *allocate_hash_table_node(void)
{
  hash_table_node *n;
  int i;

  if(free_hash_table_nodes == NULL)
  { // get more hash table nodes (1000 at a time)
    free_hash_table_nodes = (hash_table_node *)malloc((size_t)1000 * sizeof(hash_table_node));
    for(i = 0;i < 999;i++)
      free_hash_table_nodes[i].next = &free_hash_table_nodes[i + 1];
    free_hash_table_nodes[i].next = NULL;
  }
  n = free_hash_table_nodes;
  free_hash_table_nodes = free_hash_table_nodes->next;
  n->next = NULL;
  return n;
}


//
// the hash function
//

unsigned int hash_function(const char *str)
{
  static unsigned int table[256];
  unsigned int crc,i,j;

  if(table[1] == 0u) // do we need to initialize the table[] array?
    for(i = 0u;i < 256u;i++)
      for(table[i] = i,j = 0u;j < 8u;j++)
        if(table[i] & 1u)
          table[i] = (table[i] >> 1) ^ 0xAED00022u; // "magic" constant
        else
          table[i] >>= 1;
  crc = 0xAED02015u; // initial value (chosen arbitrarily)
  while(*str != '\0')
    crc = (crc >> 8) ^ table[crc & 0xFFu] ^ ((unsigned int)*str++ << 24);
  return crc % hash_table_size;
}


//
// find a hash table node given its key
// * the function returns a pointer to the hash table node that has the given key or it returns
//   NULL if no such hash table node exists
// * strings can be compared with the strcmp() function
//

hash_table_node *find_hash_table_node(char key[64])
{
  // place your code here
}


//
// insert the new hash table node n (with the key and value fields already initialized) in the
// hash table
//
// OUTSIDE of this function, use the allocate_hash_table_node() to allocate memory for the
// hash table node
//   n = allocate_new_hash_table_node();
// and use (for example) the strcpy() function to copy the key to the newly allocated node
//   strcpy(n->key,my_key);
// also, do the appropriate action to initialize the value field
//

void insert_hash_table_node(hash_table_node *n)
{
  // place your code here
}

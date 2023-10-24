#include <stdio.h>

void generate_integers()
{
  unsigned short int digits[10], used[10] = {0,0,0,0,0,0,0,0,0,0};
  int a, b, c, d, e, f, g, h, i, j, count = 0;
  unsigned long long int generated_number;

  for (a = 1; a <= 9; a++)
  {
    digits[0] = a;
    used[a] = 1;
    for (b = 0; b <= 9; b++)
    {
      if (used[b])
        continue;
      generated_number = digits[0] * 10 + b;
      if (generated_number % 2 != 0)
        continue;
      digits[1] = b;
      used[b] = 1;
      for (c = 0; c <= 9; c++)
      {
        if (used[c])
          continue;
        generated_number = digits[0] * 100 + digits[1] * 10 + c;
        if (generated_number % 3 != 0)
          continue;
        digits[2] = c;
        used[c] = 1;
        for (d = 0; d <= 9; d++)
        {
          if (used[d])
            continue;
          generated_number = digits[0] * 1000 + digits[1] * 100 + digits[2] * 10 + d;
          if (generated_number % 4 != 0)
            continue;
          digits[3] = d;
          used[d] = 1;
          for (e = 0; e <= 9; e++)
          {
            if (used[e])
              continue;
            generated_number = digits[0] * 10000 + digits[1] * 1000 + digits[2] * 100 + digits[3] * 10 + e;
            if (generated_number % 5 != 0)
              continue;
            digits[4] = e;
            used[e] = 1;
            for (f = 0; f <= 9; f++)
            {
              if (used[f])
                continue;
              generated_number = digits[0] * 100000 + digits[1] * 10000 + digits[2] * 1000 + digits[3] * 100 + digits[4] * 10 + f;
              if (generated_number % 6 != 0)
                continue;
              digits[5] = f;
              used[f] = 1;
              for (g = 0; g <= 9; g++)
              {
                if (used[g])
                  continue;
                generated_number = digits[0] * 1000000 + digits[1] * 100000 + digits[2] * 10000 + digits[3] * 1000 + digits[4] * 100 + digits[5] * 10 + g;
                if (generated_number % 7 != 0)
                  continue;
                digits[6] = g;
                used[g] = 1;
                for (h = 0; h <= 9; h++)
                {
                  if (used[h])
                    continue;
                  generated_number = digits[0] * 10000000 + digits[1] * 1000000 + digits[2] * 100000 + digits[3] * 10000 + digits[4] * 1000 + digits[5] * 100 + digits[6] * 10 + h;
                  if (generated_number % 8 != 0)
                    continue;
                  digits[7] = h;
                  used[h] = 1;
                  for (i = 0; i <= 9; i++)
                  {
                    if (used[i])
                      continue;
                    generated_number = digits[0] * 100000000 + digits[1] * 10000000 + digits[2] * 1000000 + digits[3] * 100000 + digits[4] * 10000 + digits[5] * 1000 + digits[6] * 100 + digits[7] * 10 + i;
                    if (generated_number % 9 != 0)
                      continue;
                    digits[8] = i;
                    used[i] = 1;
                    for (j = 0; j <= 9; j++)
                    {
                      if (used[j])
                        continue;
                      generated_number = digits[0] * 1000000000LL + digits[1] * 100000000 + digits[2] * 10000000 + digits[3] * 1000000 + digits[4] * 100000 + digits[5] * 10000 + digits[6] * 1000 + digits[7] * 100 + digits[8] * 10 + j;
                      if (generated_number % 10 != 0)
                        continue;
                      digits[9] = j;
                      used[j] = 1;
                      count++;
                      printf("%llu\n", generated_number);
                      used[j] = 0;
                    }
                    used[i] = 0;
                  }
                  used[h] = 0;
                }
                used[g] = 0;
              }
              used[f] = 0;
            }
            used[e] = 0;
          }
          used[d] = 0;
        }
        used[c] = 0;
      }
      used[b] = 0;
    }
    used[a] = 0;
  }
}

int main()
{
  generate_integers();
  return 0;
}
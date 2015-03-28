#include <stdio.h>

static struct sss{
  long long f;
  short snd;
} sss;

#define _offsetof(st,f) ((char *)&((st *) 16)->f - (char *) 16)

int main (void) {
  printf ("+++Struct longlong-short:\n");
  printf ("size=%d,align=%d,offset-longlong=%d,offset-short=%d,\nalign-longlong=%d,align-short=%d\n",
          sizeof (sss), __alignof__ (sss),
          _offsetof (struct sss, f), _offsetof (struct sss, snd),
          __alignof__ (sss.f), __alignof__ (sss.snd));
  return 0;
}

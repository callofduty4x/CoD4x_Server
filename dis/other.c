
/*
=================
Search the memory given by buffer pointer for a set of patterns limited by memsize
Special feature: Don't care characters
=================
*/
//Pattern search function begin
patternseek_t	patternseek(unsigned const char *patternarray, int sizeofarray, unsigned const char *buffer, unsigned int memsize)
{
    unsigned char c1, c2;
    patternseek_t z;
    unsigned const char *s1 = patternarray;
    unsigned const char *s2 = buffer;
    char dontcare=0x66;
    int i;
    int j;


    if ( patternarray == NULL || buffer == NULL) {

	z.end = NULL;
	z.start = NULL;
	return z;
    }

   for(i=0, j=0 ; j < memsize; i++, j++){

        if(i >= sizeofarray){
            z.start = (s2-i+1);
            z.end = (s2+1);
            return z;
        }

	c1 = *s1++;
	c2 = *s2++;

	if(c1 == dontcare){
	    continue;
	} else if (c1 != c2){
	    s1 = patternarray;
	    i=0;
	    continue;
	}
   }//end for
   z.end = NULL;
   z.start = NULL;
   return z;
}

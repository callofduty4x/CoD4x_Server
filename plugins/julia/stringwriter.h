class StringWriter
{
    public:
	StringWriter(char* buffer, int buffersize);
	void Append(const char* data);
	void Printf(const char* fmt, ...);
	char *GetBuffer( );
	int GetBufferPos();
	void IncBufferPos(int inc);
	void SetBufferPos(int pos);
    private:
        char *stringwriterbuffer;
        int stringwriterbuffersize;
        int stringwriterbufferpos;

};


import std.stdio;

/***********************************/

void test1()
{   int i;
    static int j;

    asm
    {
	naked		;
	mov EAX, i	;
	mov EAX, j	;
    }
}

/***********************************/

int main()
{
    for (int i = 0; ; i++)
    {
	if (i == 10)
	    break;
    }

    string[] a = new string[3];
    a[0] = "hello";
    a[1] = "world";
    a[2] = "foo";

    foreach (string s; a)
	writefln(s);

    switch (1)
    {
	default:
	    break;
    }

    switch ("foo"w)
    {
	case "foo":
	    break;
    }

    switch (1)
    {
	case 1:
	    try
	    {
		goto default;
	    }
	    catch (Throwable o)
	    {
	    }
	    break;

	default:
	    break;
    }

    switch (1)
    {
	case 1:
	    try
	    {
		goto case 2;
	    }
	    catch (Throwable o)
	    {
	    }
	    break;

	case 2:
	    break;
    }

    writefln("Success\n");
    return 0;
}

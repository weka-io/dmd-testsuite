/*
TEST_OUTPUT:
---
fail_compilation/fail4082.d(14): Error: 'fail4082.Foo.~this' is not nothrow
fail_compilation/fail4082.d(12): Error: function 'fail4082.test1' is nothrow yet may throw
---
*/
struct Foo
{
    ~this() { throw new Exception(""); }
}
nothrow void test1()
{
    Foo f;

    goto NEXT;
NEXT:
    ;
}

/*
TEST_OUTPUT:
---
fail_compilation/fail4082.d(32): Error: 'fail4082.Bar.~this' is not nothrow
fail_compilation/fail4082.d(32): Error: function 'fail4082.test2' is nothrow yet may throw
---
*/
struct Bar
{
    ~this() { throw new Exception(""); }
}
nothrow void test2(Bar t)
{
}

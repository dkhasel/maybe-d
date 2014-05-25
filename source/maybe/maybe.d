module maybe.maybe;

public import maybe.types;
public import maybe.helpers;

unittest
{
    auto opt1 = just!int(1);
    assert(opt1.getOrElse(0) == 1);

    auto opt2 = nothing!int();
    assert(opt2.getOrElse(1) == 1);

    auto opt3 = just!string("test");
    assert(opt3.getOrElse("def") == "test");

    auto opt4 = nothing!string();
    assert(opt4.getOrElse("def") == "def");
}

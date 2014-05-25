module maybe.types;


/++
 + The poor man's version of Haskell's Maybe type. Since
 + we don't have discriminated unions types (or case classes, or algebraic data,
 + types, or tagged unions, or however you might want to implement them), this
 + will have to do!
 +
 + Example usage:
 + ---
 + Maybe!string maybeReturnsAString(bool doReturnString)
 + {
 +     if (doReturnString)
 +     {
 +         return just!string("It's a string!");
 +     } else {
 +         return nothing!string();
 +     }
 + }
 +
 + Maybe!string result = maybeReturnsAString(true);
 + // This will print "The string was It's a string!"
 + writeln("The string was ", result.getOrElse("a default string");
 +
 + Maybe!string result2 = maybeREturnAString(false);
 + // This will print "The string was a default string"
 + writeln("The string was ", result.getOrElse("a default string");
 + ---
 +/
class Maybe(T)
{
    abstract T getOrElse(T defaultVal);
}

class Just(T) : Maybe!T
{
    this(T val)
    {
        _val = val;
    }
    override
    T getOrElse(T defaultVal)
    {
        return _val;
    }

    private:

    T _val;
}

class Nothing(T) : Maybe!T
{
    override
    T getOrElse(T defaultVal)
    {
        return defaultVal;
    }
}

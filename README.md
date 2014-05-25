maybe-d
=======

Simple syntactic sugar for a Maybe-like experience. `Maybe(T)` is just one small
step toward a world without null.

Example usage:

```d

import maybe.d;

Maybe!string maybeReturnsString( bool shouldReturnString )
{
    if( shouldReturnString )
    {
        return just!string("foo");
    }
    else
    {
        return nothing!string;
    }
}

// prints "the string is foo"
writeln( "the string is " ~ maybeReturnsString(true).getOrElse("bar") );

// prints "the string is bar"
writeln( "the string is " ~ maybeReturnsString(false).getOrElse("bar") );

```

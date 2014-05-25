module maybe.helpers;

import maybe.types;

Maybe!T just(T)(T val)
{
    return new Just!T(val);
}

Maybe!T nothing(T)()
{
    return new Nothing!T;
}

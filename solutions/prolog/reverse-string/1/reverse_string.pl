string_reverse(S, Reversed):-
    string_chars(S, Chars),         % 把字符串转成字符列表
    reverse(Chars, RevChars),       % 反转列表
    string_chars(Reversed, RevChars).

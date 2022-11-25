

POSIX	    Description	ASCII	                                                Unicode	                                    Shorthand	            Java
[:alnum:]	Alphanumeric characters	                                            [a-zA-Z0-9]	[\p{L}\p{Nl}\p{Nd}]		        \p{Alnum}
[:alpha:]	Alphabetic characters	                                            [a-zA-Z]	                                \p{L}\p{Nl}		        \p{Alpha}
[:ascii:]	ASCII characters	                                                [\x00-\x7F]	                                \p{InBasicLatin}		\p{ASCII}
[:blank:]	Space and tab	                                        [ \t]	    [\p{Zs}\t]	                                \h	                    \p{Blank}
[:cntrl:]	Control characters	                                                [\x00-\x1F\x7F]	                            \p{Cc}		            \p{Cntrl}
[:digit:]	Digits	                                                            [0-9]	                                    \p{Nd}	\d	            \p{Digit}
[:graph:]	Visible characters (anything except spaces and control characters)	[\x21-\x7E]	[^\p{Z}\p{C}]	                \p{Graph}
[:lower:]	Lowercase letters	                                                [a-z]	                                    \p{Ll}	\l	            \p{Lower}
[:print:]	Visible characters and spaces (anything except control characters)	[\x20-\x7E]	                                \P{C}                   \p{Print}
[:punct:]	Punctuation (and symbols).	                                        [!"\#$%&'()*+,\-./:;<=>?@\[\\\]^_‘{|}~]	    \p{P}		            \p{Punct}
[:space:]	All whitespace characters, including line breaks	                [\t\r\n\v\f]	[\p{Z}\t\r\n\v\f]	        \s	                    \p{Space}
[:upper:]	Uppercase letters	                                                [A-Z]	                                    \p{Lu}	\u	            \p{Upper}
[:word:]	Word characters (letters, numbers and underscores)	                [A-Za-z0-9_]	[\p{L}\p{Nl}\p{Nd}\p{Pc}]	\w	                    \p{IsWord}
[:xdigit:]	Hexadecimal digits	                                                [A-Fa-f0-9]	[A-Fa-f0-9]		                \p{XDigit}


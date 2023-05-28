# egrep bracket expressions

<pre>
POSIX	    Unicode	                                    
[:alnum:]	[a-zA-Z0-9]		        
[:alpha:]	[a-zA-Z]	                                
[:ascii:]	[\x00-\x7F]	                                
[:blank:]	[\p{Zs}\t]	                                
[:cntrl:]	[\x00-\x1F\x7F]	                            
[:digit:]	[0-9]	                                    
[:graph:]	[\x21-\x7E]     # Visible characters (anything except spaces and control characters)		
[:lower:]	[a-z]
[:print:]	[\x20-\x7E]	    # Visible characters and spaces (anything except control characters)	
[:punct:]	Punctuation (and symbols).	                                        
[:space:]	[\t\r\n\v\f]    # All whitespace characters, including line breaks	                
[:upper:]	[A-Z]
[:word:]	[A-Za-z0-9_]
[:xdigit:]	[A-Fa-f0-9]
</pre>

k=$(date -d '1 hour ago' +'%H') | egrep "^*$k:" ./my.log


grep "$(date "+%Y-%m-%d %H" -d '1 hour ago')" test.log
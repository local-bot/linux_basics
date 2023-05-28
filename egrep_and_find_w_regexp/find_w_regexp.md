
# find with regexp

using find with -iname
<pre>
find . -iname '*this_is_somewhere_included*.docx'
</pre>

Outputs: 
<pre>
./Documents_2021/2021_new/some_file_39_this_is_somewhere_included.docx
./Documents_2021/2021_new/some_file_#_this_is_somewhere_included.docx
./Documents_2021/some_file_28_this_is_somewhere_included.docx
./Documents_2021/~$richtsheft_28_this_is_somewhere_included.docx
./Documents_2021/some_file_5_this_is_somewhere_included.docx
./Documents_2021/some_file_39_this_is_somewhere_included.docx
./Documents_2021/some_file_#_this_is_somewhere_included.docx
./Documents_2020/some_file_this_is_somewhere_included_KW48_2020.docx
./Documents_2020/some_file_this_is_somewhere_included.docx
./Documents_2020/some_file_this_is_somewhere_included_KW42_2020.docx
./Documents_2020/2020_new/some_file_this_is_somewhere_included_KW48_2020.docx
./Documents_2020/2020_new/some_file_this_is_somewhere_included.docx
</pre>
# Linux links


# simbolic link (file or directory)
Will still exist as a broken or unusable link after the original file or directory is deleted
<pre>
ln -s existing_file_or_directory new_soft_link
</pre>

# hard link (only file)
Will continue to remain usable even if the original file is removed.
<pre>
ln existing_file new_hard_link
</pre>

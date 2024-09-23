# RPX
Utilities and User Commands for Dyalog APL

## LS
List directory contents.

Offers a uniform interface on all supported platfotrms.

By default, list the current directory.

```
      ]ls
 Listing contents of C:\g\RPX\   
  dir   C:\g\RPX\.git            
  file  C:\g\RPX\README.md       
  file  C:\g\RPX\RikedyP.dyalog
```

The current directory is shown with the `]cd` user command.

```
      ]cd
C:\g\RPX
```

A path may provided to `]ls` and it may be absolute or relative to the current directory.

```
      ]ls ../RPX
 Listing contents of C:\g\RPX\   
  dir   C:\g\RPX\.git            
  file  C:\g\RPX\README.md       
  file  C:\g\RPX\RikedyP.dyalog
```

This allows any file or folder to be accessed using the `]open` user command. For example, by replacing the word "file" in the session log with "]open" we can open README.md in the default editor.

<pre><code>      ]ls ../RPX
 Listing contents of C:\g\RPX\   
  dir   C:\g\RPX\.git            
  <mark>]open</mark>  C:\g\RPX\README.md       
  file  C:\g\RPX\RikedyP.dyalog
</code></pre>

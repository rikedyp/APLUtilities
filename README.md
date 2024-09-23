# RPX
Utilities and User Commands for Dyalog APL

## LS
List directory contents.

Offers a uniform interface on all supported platfotrms.

By default, list the current directory.

```
      ]ls
 Listing contents of \g\RPX\   
  dir   \g\RPX\.git            
  file  \g\RPX\RikedyP.dyalog
```

The current directory is shown with the `]cd` user command.

```
      ]cd
C:\g\RPX
```

A path may provided to `]ls` and it may be absolute or relative to the current directory.

```
      ]ls ../RPX
 Listing contents of ..\RPX\   
  dir   ..\RPX\.git            
  file  ..\RPX\README.md       
  file  ..\RPX\RikedyP.dyalog
```

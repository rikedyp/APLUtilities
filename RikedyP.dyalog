:Namespace RikedyP
⍝ Custom user commands

    ⎕IO←1 ⋄ ⎕ML←1

    ∇ r←List
      r←⎕NS¨2⍴⊂⍬
    ⍝ Name, group, short description and parsing rules
      r.Name←'ls' 'MyCmd'
      r.Group←'RikedyP'
      r[1].Desc←'List directory contents'
      r.Parse←'' '' ⍝ ENTER NUMBER OF ARGS AND OPTIONALLY -modifiers HERE (for details, see https://docs.dyalog.com/20.0/User%20Commands%20User%20Guide.pdf#page=18 )
    ∇

    ∇ r←Run(cmd input)
      :Select cmd
      :Case 'ls'
          r←LS input
      :EndSelect
    ∇

    ∇ r←level Help cmd
      :Select cmd
      :Case 'ls'
          r←'List contents of directory. Default is current directory, else user may provide a single argument of a relative or absolute folder path.'
      :EndSelect
    ∇

      LS←{
          0∊⍴⍵:∇⊃1 ⎕NPARTS''   ⍝ Default to current directory
          dir←⍵~'"'
          1≠1 ⎕NINFO dir:'Argument provided does not specify a directory.'
          r←⊂'Listing contents of ',dir
          (c t)←0 1(⎕NINFO ⎕OPT 1)dir,'*'
          type←'file' 'dir' 'other'[t]
          r,←⊂c,⍪type
          ⍕⍪r,⊂c,⍪type
      }

:EndNamespace

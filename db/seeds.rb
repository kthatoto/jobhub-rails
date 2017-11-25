# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

skills = ['JavaScript','Java','Ruby','Python','PHP','CSS','C++','C','C#','Objective-C','Shell','Perl','R','VimL','Go','CoffeeScript','Scala','Haskell','HTML','TeX','Lua','Clojure','Swift','Emacs Lisp','Matlab','Arduino','Groovy','ActionScript','Puppet','Erlang','Visual Basic','Processing','Assembly','PowerShell','Common Lisp','XML','ASP','D','Scheme','Rust','Dart','OCaml','TypeScript','Pascal','XSLT','FORTRAN','Prolog','Racket','F#','Haxe','VHDL','Verilog','Elixir','Julia','ColdFusion','Tcl','Apex','AutoHotkey','IDL','AppleScript','Vala','Standard ML','Mathematica','Objective-C++','Pure Data','Cuda','OpenEdge ABL','LiveScript','SuperCollider','Ada','Coq','Max','Smalltalk','SQL','Game Maker Language','Gosu','AutoIt','XQuery','Perl6','Objective-J','Elm','Kotlin','Awk','SourcePawn','Nimrod','Io','Scilab','BlitzBasic','Eiffel','Stata','nesC','PureScript','Agda','NetLogo','Squirrel','Xtend','Forth','SAS','DM','ooc','SystemVerilog','UnrealScript','Mercury','Rebol','Idris','Nix','Gnuplot','AspectJ','Nemerle','PAWN','XC','xBase','Boo','CLIPS','GAP','MoonScript','Ceylon','ANTLR','VCL','Monkey','Arc','Dylan','Slash','Bro','Factor','COBOL','Inform 7','Propeller Spin','Oxygene','Lasso','Brightscript','Nu','Pike','Opa','Hy','Mirah','J','KRL','Parrot','Component Pascal','Xojo','ABAP','Crystal','Alloy','Bluespec','Frege','Isabelle','RobotFramework','Fantom','PogoScript','Augeas','Clean','XProc','Fancy','Volt','Red','ATS','wisp']
skills.each do |skill|
  Skill.create(name: skill)
end

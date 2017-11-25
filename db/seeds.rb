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

User.create(name: "jobhub8128", github_user_id: "jobhub8128", access_token: "jobhub1")
User.create(name: "uasbbkez", github_user_id: "uasbbkez", access_token: "jobhub2")

Issue.create(repository_name: "test1", github_issue_id: 1, detail: "テスト1", title: "problem1", cost: 100, user_id: 1, is_opened: true, skill: nil)
Issue.create(repository_name: "test1", github_issue_id: 2, detail: "テスト2", title: "problem2", cost: 100, user_id: 1, is_opened: true, skill: nil)

Challenge.create(issue_id: 1, user_id: 2, status: 0, detail: "", pull_request_id: 3)

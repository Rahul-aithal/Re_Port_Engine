#let d = json("/data.json").chapters.results

= #d.title
#for para in d.body.split("\n\n") { para + parbreak() }

#for section in d.sections [
  == #section.title
  #for para in section.body.split("\n\n") { para + parbreak() }

  #for sub in section.subsections [
    === #sub.title
    #for para in sub.body.split("\n\n") { para + parbreak() }
  ]
]

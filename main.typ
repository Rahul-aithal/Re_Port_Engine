// ====== Imports ======
#import "template.typ": conf
#import "[1] preamble/preamble.typ": preamble
#import "[2] front-matter/front-matter.typ": front_matter
#import "[4] back-matter/back-matter.typ": back_matter

// ====== Report Details ======

#let data = json("data.json")
#let title = data.title
#let authors = data.authors
#let guide = data.guide
#let year = data.year
#let semester = data.semester
#let semester_section = data.semester_section
#let subject = data.subject
#let subject_code = data.subject_code
#let department = data.department
#let abstract = [#data.abstract]
// ====== Template ======

#show: preamble.with(
  title: title,
  subject: subject,
  subject_code: subject_code,
  authors: authors,
  guide: guide,
  semester: semester,
  section: semester_section,
  department: department,
  year: year,
)


#show: front_matter.with(
  abstract_content: abstract,
  year: year,
  department: department,
)

// ====== Chapters (modify accordingly) ======

#{
  show: conf.with(
    title: title,
    year: year,
    department: department,
  )

  include "[3] chapters/[1] Introduction.typ"
  include "[3] chapters/[2] Literature Survey.typ"
  include "[3] chapters/[3] System Requirements.typ"
  include "[3] chapters/[4] Methodology & Implementation.typ"
  include "[3] chapters/[5] Result & Discussion.typ"
  include "[3] chapters/[6] Conclusion.typ"
}

// ====== References ======

// Refer: https://github.com/typst/hayagriva/blob/main/docs/file-format.md
#show:back_matter()

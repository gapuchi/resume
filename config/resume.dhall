let LeftRightHeader
    : Type
    = { left : Text, right : Text }

let ResumeSubSection
    : Type
    = { header : LeftRightHeader, items : List Text }

let ResumeSection
    : Type
    = { title : Text
      , header : LeftRightHeader
      , subSections : List ResumeSubSection
      }

let Resume
    : Type
    = { sections : List ResumeSection }

let educuation
    : ResumeSection
    = { title = "Education"
      , header =
        { left = "University of North Carolina at Chapel Hill"
        , right = "Chapel Hill, NC"
        }
      , subSections =
        [ { header =
            { left =
                "Bachelor of Science in Computer Science with a Double in Economics"
            , right = "August 2013 - May 2017"
            }
          , items = [] : List Text
          }
        ]
      }

let amazonSde
    : ResumeSubSection
    = { header =
        { left = "Software Development Engineer"
        , right = "August 2017 - Present"
        }
      , items =
        [ "Developed a system that maps over 30 billion products to an Amazon brand database daily to discover products and brands not present in the Amazon Catalog and to determine brands’ selling potentials"
        , "Maintained a platform (Crater) built on top of AWS Mechanical Turk to allow users to consolidate worker responses manually, increasing accuracy of responses when compared to the default string comparison"
        , "Developed a Crater feature to allow users to choose which workers gets paid, saving the original costs of paying all workers, regardless of their responses’ quality"
        , "Developed a Crater feature to retrieve responses before all questions (1000+ per batch) were answered, reducing the wait time from days to minutes for downstream consumers"
        , "Coordinated the handoff of Crater to another team and documented parity requirements for their effort to consolidate Crater with their own platform to unify functionality across the Selection Monitoring org"
        ]
      }

let experience
    : ResumeSection
    = { title = "Experience"
      , header = { left = "Amazon", right = "Seattle, WA" }
      , subSections = [ amazonSde ]
      }

let resume
    : Resume
    = { sections = [ educuation, experience ] }

in  resume

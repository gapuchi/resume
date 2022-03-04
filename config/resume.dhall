let Name
    : Type
    = { first  : Text, last : Text }

let User
    : Type
    = { name : Name, url : Text, email : Text, phone : Text }

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
    = { user : User, sections : List ResumeSection }

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
            , right = "August 2013 -- May 2017"
            }
          , items = [] : List Text
          }
        ]
      }

let amazonSde
    : ResumeSubSection
    = { header =
        { left = "Software Development Engineer"
        , right = "August 2017 -- Present"
        }
      , items =
        [ "Developed a system that maps over 30 billion products to an Amazon brand database daily to discover products and brands not present in the Amazon Catalog and to determine brands’ selling potentials"
        , "Maintained a platform (Crater) built on top of AWS Mechanical Turk to allow users to consolidate worker responses manually, increasing accuracy of responses when compared to the default string comparison"
        , "Developed a Crater feature to allow users to choose which workers gets paid, saving the original costs of paying all workers, regardless of their responses’ quality"
        , "Developed a Crater feature to retrieve responses before all questions (1000+ per batch) were answered, reducing the wait time from days to minutes for downstream consumers"
        , "Coordinated the handoff of Crater to another team and documented parity requirements for their effort to consolidate Crater with their own platform to unify functionality across the Selection Monitoring org"
        ]
      }

let amazonIntern
    : ResumeSubSection
    = { header =
        { left = "Software Development Intern"
        , right = "August 2017 -- Present"
        }
      , items =
        [ "Worked on the Ad Products team to create a page for advertisers to preview their ads collectively"
        , "Maintained site consistency by working with a Sr. UX designer to create the page layout and view"
        , "Ensured highest usability of the application by seeking feedback from stakeholders from 3 other teams"
        , "Used Java and React JS to create a dynamic webpage that easily scales to show 100+ ads"
        , "Deployed the project into production and documented my work for future development"
        ]
      }

let experience
    : ResumeSection
    = { title = "Experience"
      , header = { left = "Amazon", right = "Seattle, WA" }
      , subSections = [ amazonSde, amazonIntern ]
      }

let user
    : User
    = { name =
        { first = "Arjun"
        , last = "Adhia"
        }
      , url = "https://arjun.adhia.net/"
      , email = "arjun.adhia@gmail.com"
      , phone = "704-658-6570"
      }

let resume
    : Resume
    = { user = user, sections = [ educuation, experience ] }

in  resume

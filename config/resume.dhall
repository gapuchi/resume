let LeftRightHeader
    : Type
    = { left : Text, right : Text }

let ResumeItem
    : Type
    = { item : Text }

let ResumeSubSection
    : Type
    = { header : LeftRightHeader, items : List ResumeItem }

let ResumeSection
    : Type
    = { title : Text
      , header : LeftRightHeader
      , subSections : List ResumeSubSection
      }

let Resume
    : Type
    = { sections : List ResumeSection }

let resume
    : Resume
    = { sections =
        [ { title = "Education"
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
              , items = [ { item = "hello" }, { item = "bye" } ]
              }
            ]
          }
        ]
      }

in  resume

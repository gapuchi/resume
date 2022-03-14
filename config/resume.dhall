let educuation = { title = "Education"
      , header =
        { left = "University of North Carolina at Chapel Hill"
        , right = "Chapel Hill, NC"
        }
      , subSections =
        [ { header =
            { left =
                "Bachelor of Science in Computer Science and Economics, Minor in Mathematics"
            , right = "August 2013 -- May 2017"
            }
          , items = [] : List Text
          }
        ]
      }

let emrSde = {
  header = { left = "Software Development Engineer - AWS Elastic Map Reduce", right = "April 2021 -– Present" }
  , items =
    [
      "Launched a new AWS EMR offering, EMR Serverless, enabling clients to run EMR jobs without having to setup, maintain, or configure the runtime environment."
      , "Developed one of EMR Serverless control plane components that provides nodes to client's distributed application (i.e. Spark and Hive)"
      , "Designed a multi-tenant service that enables multiple clients to run applications while ensuring network and compute isolation between clients."
      , "Implemented a client feature to proactively create nodes to improve application run times."
      , "Set up metrics and monitoring in parts of EMR Serverless to improve debugging and proactively identify issues."
    ]
}

let ubcSde = { 
  header = { left = "Software Development Engineer - Selection Monitoring", right = "August 2017 -– April 2021" }
  , items =
    [
      "Developed a system that maps over 30 billion products to an Amazon brand database daily to discover products and brands not present in the Amazon Catalog and to determine brands’ selling potentials"
      , "Maintained a platform (Crater) built on top of AWS Mechanical Turk to allow users to consolidate worker responses manually, increasing accuracy of responses when compared to the default string comparison"
      , "Developed a Crater feature to allow users to choose which workers gets paid, saving the original costs of paying all workers, regardless of their responses’ quality"
      , "Developed a Crater feature to retrieve responses before all questions (1000+ per batch) were answered, reducing the wait time from days to minutes for downstream consumers"
      , "Coordinated the handoff of Crater to another team and documented parity requirements for their effort to consolidate Crater with their own platform to unify functionality across the Selection Monitoring org"
    ]
  }

let amazonIntern = { 
  header = { left = "Software Development Intern - Advertising Platform", right = "May 2016 -– August 2016" }
  , items =
    [ 
      "Worked on the Ad Products team to create a page for advertisers to preview their ads collectively"
      , "Maintained site consistency by working with a Sr. UX designer to create the page layout and view"
      , "Ensured highest usability of the application by seeking feedback from stakeholders from 3 other teams"
      , "Used Java and React JS to create a dynamic webpage that easily scales to show 100+ ads"
      , "Deployed the project into production and documented my work for future development"
    ]
}

let experience = { 
  title = "Experience"
  , header = { left = "Amazon", right = "Seattle, WA" }
  , subSections = [ emrSde, ubcSde, amazonIntern ]
}

let techList = {
  header = { left = "Amazon", right = "Seattle, WA" }
  , items = 
  [
    "Languages – Java, Scala, SQL, JavaScript, TypeScript, Python, C/C++, GoLang, Rust"
    , "AWS - ECS, Fargate, Lambda, Step Function, DynamoDB, CloudFormation, CloudWatch, S3, CDK, IAM, KMS, VPC"
    , "Tooling – Apache Spark, Spring, Guice, React"
  ]
}

let tech = { 
  title = "Technologies"
  , header = { left = "Amazon", right = "Seattle, WA" }
  , subSections = [ techList ]
}

let user = { 
  name =
    { first = "Arjun"
    , last = "Adhia"
    }
  , url = "https://arjun.adhia.net/"
  , email = "arjun.adhia@gmail.com"
  , phone = "704-658-6570"
}

let resume = {
  user = user,
  sections = [ educuation, experience, tech ]
}

in  resume

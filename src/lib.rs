pub mod resume {
    use serde::{Serialize, Deserialize};

    #[derive(Debug, Serialize, Deserialize)]
    pub struct LeftRightHeader {
        pub left: String,
        pub right: String,
    }

    #[derive(Debug, Serialize, Deserialize)]
    pub struct ResumeListItem {
        pub item: String,
    }

    #[derive(Debug, Serialize, Deserialize)]
    pub struct ResumeSubSection {
        pub header: LeftRightHeader,
        pub items: Vec<ResumeListItem>,
    }

    #[derive(Debug, Serialize, Deserialize)]
    pub struct ResumeSection {
        pub title: String,
        pub header: LeftRightHeader,
        pub subSections: Vec<ResumeSubSection>,
    }

    #[derive(Debug, Serialize, Deserialize)]
    pub struct Resume {
        pub sections: Vec<ResumeSection>
    }
}
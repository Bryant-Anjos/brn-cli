let get = name =>
  switch name {
  | "component" => Some(Template_Component.make)
  | "storybook" => Some(Template_Storybook.make)
  | "styles" => Some(Template_Styles.make)
  | "test" => Some(Template_Test.make)
  | _ => None
  }

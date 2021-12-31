module Object = {
  @scope("Object") @val external values: Js.Dict.t<'a> => array<'a> = "values"
  @scope("Object") @val external entries: Js.Dict.t<'a> => array<(string, 'a)> = "entries"
  external toDictString: {..} => Js.Dict.t<string> = "%identity"
}

let make = (~path: string, ~name: string) => {
  let files = {
    "component": "index.tsx",
    "storybook": `${name}.story.tsx`,
    "styles": "styles.ts",
    "test": `${name}.test.tsx`,
  }

  let writeFile = FileHelpers.writeToPath(~path)
  let toFileMissingBool = (file: string) => !FileHelpers.fileExists(~path, ~file)
  let checkAllMissing = (acc: bool, curr: bool) => acc && curr

  let noneExist =
    Object.values(files->Object.toDictString)
    ->Js.Array2.map(toFileMissingBool)
    ->Js.Array2.reduce(checkAllMissing, true)

  if noneExist {
    Object.entries(files->Object.toDictString)->Js.Array2.forEach(((type_, fileName)) => {
      switch Templates.get(type_) {
      | Some(template) => writeFile(~file=fileName, ~content=template(name))
      | None => ()
      }
    })
  }
}

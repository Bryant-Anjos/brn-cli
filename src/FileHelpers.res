@module("fs") external mkdirSync: string => unit = "mkdirSync"
@module("fs")
external writeFile: (
  ~path: string,
  ~data: string,
  ~callback: Js.Nullable.t<Js.Exn.t> => unit,
) => unit = "writeFile"
let writeFile = (~path, ~data, ~callback) =>
  writeFile(~path, ~data, ~callback=error => {
    callback(error->Js.Nullable.toOption)
  })

open Node

let fileExists = (~path: string, ~file: string) => Fs.existsSync(`${path}/${file}`)
let writeToPath = (~path: string, ~file: string, ~content: string) => {
  let filePath = `${path}/${file}`

  if !Fs.existsSync(path) {
    mkdirSync(path)
  }

  writeFile(~path=filePath, ~data=content, ~callback=maybeError => {
    switch maybeError {
    | Some(error) =>
      Js.Exn.raiseError(error->Js.Exn.message->Belt.Option.getWithDefault("Error to create files"))
    | None => Js.log("Created file: " ++ Path.basename(filePath))
    }
  })
}

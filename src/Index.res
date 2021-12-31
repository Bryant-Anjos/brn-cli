let program = Commander.make()
let _ = {
  open Commander
  open Node

  let _ = program->version(PackageJson.version, ~flags="-v, --version", ())
  let _ =
    program
    ->command("generate <name>", ())
    ->alias("g")
    ->description("generate the react native files")
    ->action(name => {
      let path = [Process.cwd(), "src", name]->Path.join
      CreateFiles.make(~path, ~name=Path.basename(name))
    })
  let _ = program->parse(Process.argv, ())
}

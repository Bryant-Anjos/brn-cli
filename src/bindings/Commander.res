type t
type commandOptions = {
  hidden: option<bool>,
  isDefault: option<bool>,
}
type parseOptions = {from: [#node | #electron | #user]}
@module("commander") @new external make: unit => t = "Command"
@send external version: (t, string, ~flags: string=?, ~description: string=?, unit) => t = "version"
@send external command: (t, string, ~options: commandOptions=?, unit) => t = "command"
@send external alias: (t, string) => t = "alias"
@send external description: (t, string) => t = "description"
@send external action: (t, 'function) => t = "action"
@send external parse: (t, array<string>, ~options: parseOptions=?, unit) => t = "parse"

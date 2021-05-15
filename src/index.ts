import { Command } from 'commander'
import { join, basename } from 'path'
import { createFiles } from './createFiles'

import { version } from '../package.json'

const program = new Command()

program.version(version, '-v, --version')

program
  .command('generate <name>')
  .alias('g')
  .description('generate the react native files')
  .action((name: string) => {
    const path = join(process.cwd(), 'src', name)
    createFiles(path, basename(name))
  })

program.parse(process.argv)

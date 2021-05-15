import { existsSync, mkdirSync, writeFile } from 'fs'
import { basename } from 'path'

export const fileExists = (path: string) => (file: string) =>
  existsSync(`${path}/${file}`)

export const writeToPath =
  (path: string) => (file: string, content: string) => {
    const filePath = `${path}/${file}`

    if (!existsSync(path)) mkdirSync(path)

    writeFile(filePath, content, (err) => {
      if (err) throw err
      console.log('Created file: ', basename(filePath))
      return true
    })
  }

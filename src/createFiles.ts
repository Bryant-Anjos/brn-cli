import { templates } from './templates'
import { writeToPath, fileExists } from './fileHelpers'

export function createFiles(path: string, name: string) {
  const files = {
    component: 'index.tsx',
    storybook: `${name}.story.tsx`,
    styles: 'styles.ts',
    test: `${name}.test.tsx`,
  }

  const writeFile = writeToPath(path)
  const toFileMissingBool = (file: string) => !fileExists(path)(file)
  const checkAllMissing = (acc: boolean, cur: boolean) => acc && cur

  const noneExist = Object.values(files)
    .map(toFileMissingBool)
    .reduce(checkAllMissing)

  if (noneExist) {
    Object.entries(files).forEach(([type, fileName]) => {
      writeFile(fileName, templates[type](name))
    })
  }
}

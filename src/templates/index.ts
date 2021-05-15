import { component } from './component.template'
import { storybook } from './storybook.template'
import { styles } from './styles.template'
import { test } from './test.template'

type Template = (name: string) => string

export const templates: Record<string, Template> = {
  component,
  storybook,
  styles,
  test,
}

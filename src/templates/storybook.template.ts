export const storybook = (name: string) => `import React from 'react'
import { StyleSheet, View } from 'react-native'

import { Meta, Story } from '@storybook/react'

import ${name} from './index'

export default {
  title: 'Components/${name}',
  component: ${name},
} as Meta

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
})

const Template: Story<React.ComponentProps<typeof ${name}>> = args => (
  <View style={styles.container}>
    <${name} {...args} />
  </View>
)

export const ${name}Component = Template.bind({})
${name}Component.args = {}
`

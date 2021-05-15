export const component = (name: string) => `import React from 'react'
import { View } from 'react-native'

import { Container } from './styles'

const ${name}: React.FC = () => {
  return <View />
}

export default ${name}`

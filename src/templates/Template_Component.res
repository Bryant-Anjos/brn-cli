let make = name =>
  `import React from 'react'
import { View } from 'react-native'

import { Container } from './styles'

const ${name}: React.FC = () => {
  return <View />
}

export default ${name}
`

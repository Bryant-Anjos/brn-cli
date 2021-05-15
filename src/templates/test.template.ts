export const test = (name: string) => `import 'react-native'
import React from 'react'
import ${name} from './index'

// Note: test renderer must be required after react-native.
import renderer from 'react-test-renderer'

jest.useFakeTimers()

it('renders correctly', () => {
  renderer.create(<${name} />)
})
`

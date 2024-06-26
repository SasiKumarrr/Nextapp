import React from 'react'

const layout = ({children}) => {
  return (
    <div style={{textAlign:'center'}}>
    <div>
        <h1>Hi</h1>
    </div>
    <div>{children}</div>
    </div>
  )
}

export default layout
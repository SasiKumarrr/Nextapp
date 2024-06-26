import React from 'react'

const page = ({params}) => {
  return (
    <div>Hi {params.players[0]}</div>
  )
}

export default page
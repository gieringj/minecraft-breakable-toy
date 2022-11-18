import React, { useState, useEffect } from "react"
import { withRouter } from "react-router-dom"

const CreatorContainer = (props) => {

const [creator, setCreator] = useState({ current_user: {} })

  const fetchCreator = async () => {
    try {
      const response = await fetch(`/api/v1/creators/${props.match.params.id}`)
      if (!response.ok) {
        const errorMessage = `${response.status} ${response.statusText}`
        const error = new Error(errorMessage)
        throw (error)
      } else {
        const parsedVideo = await response.json()
        setCreator(parsedCreator.creator)
      }
    } catch (err) {
      console.log(`Error! - ${err}`)
    }
  }

  useEffect(() => {
    fetchCreator()
  }, [])

  return (
    <div>
      <h3>Creator Show</h3>
    </div>
  )
}

export default withRouter(CreatorContainer)




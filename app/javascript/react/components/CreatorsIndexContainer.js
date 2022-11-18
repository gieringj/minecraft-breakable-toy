import React, { useState, useEffect } from "react"
import { withRouter } from "react-router-dom"

const CreatorsIndexContainer = (props) => {

    const [creators, setCreators] = useState({ current_user: {} })

    const fetchCreators = async () => {
        try {
        const response = await fetch(`/api/v1/creators/`)
        if (!response.ok) {
            const errorMessage = `${response.status} ${response.statusText}`
            const error = new Error(errorMessage)
            throw (error)
        } else {
            const parsedCreators = await response.json()
            setCreators(parsedCreators.creators)
        }
        } catch (err) {
        console.log(`Error! - ${err}`)
        }
  }

  useEffect(() => {
    fetchCreators()
  }, [])

  return (
    <div>
      <h3>Creators Index</h3>
    </div>
  )
}

export default withRouter(CreatorsIndexContainer)




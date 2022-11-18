import React, { useState, useEffect } from "react"
import { withRouter } from "react-router-dom"
import { Link } from "react-router-dom"

const HomeContainer = (props) => {

  const handleClick = event => {
    event.preventDefault()
    props.setFamiliarity(event.target.outerText)
  }

  return (
    <div>
      <h3>Home Index</h3>

      <div onClick={handleClick}>
      <Link to={`/videos`}>
        <p>Beginner</p>
      </Link>
      </div>
      <div onClick={handleClick}> 
      <Link to={`/videos`}>
        <p>Intermediate</p>
      </Link>
      </div>
      <div onClick={handleClick}>
      <Link to={`/videos/`}>
        <p>Advanced</p>
      </Link>
      </div>
    </div>
  )

}

export default withRouter(HomeContainer)
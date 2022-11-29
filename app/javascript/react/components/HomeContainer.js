import React, { useState, useEffect } from "react"
import { withRouter } from "react-router-dom"
import { Link } from "react-router-dom"

const HomeContainer = (props) => {

  const handleClick = event => {
    event.preventDefault()
    props.setFamiliarity(event.target.outerText)
  }

  return (
    <div className="margin-left">
      <h3>Home Index</h3>
    <div className="grid-x">
      <div className="card callout small-3" onClick={handleClick} >
        <Link to={`/videos`}>
          <p>Beginner</p>
        </Link>
      </div>
      <div className="card callout small-3" onClick={handleClick}> 
      <Link to={`/videos`}>
        <p>Intermediate</p>
      </Link>
      </div>
      <div className="card callout small-3" onClick={handleClick}>
      <Link to={`/videos/`}>
        <p>Advanced</p>
      </Link>
      </div>
      <div className="small-9 card-thin callout" nClick={handleClick}>
      <Link to={`/videos/`}>
        <p>All Videos</p>
      </Link>
      </div>
    </div>
    </div>
  )

}

export default withRouter(HomeContainer)
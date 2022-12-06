import React, { useState, useEffect } from "react"
import { withRouter } from "react-router-dom"
import { Link } from "react-router-dom"
import storyMode from "/Users/jeff/minecraft-breakable-toy/src/images/storyMode.png"

const HomeContainer = (props) => {

  const handleFamiliarityClick = event => {
    event.preventDefault()
    props.setFamiliarity(event.target.outerText)
  }
  const handleTypeClick = event => {
    event.preventDefault()
    props.setType(event.target.outerText)
  }

  return (
    <div className="small-offset-1">
    <div className="grid-x grid-margin-x">

      <div className="card callout small-3" onClick={handleFamiliarityClick}>
          <Link to={`/videos`}>
            <p>Beginner</p>
          </Link>
          <img className="image" src="https://learn.microsoft.com/en-us/minecraft/creator/documents/media/redstone/torch_block_basics.png">
          </img>
      </div>

      <div className="card callout small-3" onClick={handleFamiliarityClick}> 
          <Link to={`/videos`}>
            <p>Intermediate</p>
          </Link>
          <img className="image" src="https://cdn.apexminecrafthosting.com/img/uploads/2022/05/21024125/Iron-Farm.png">    
          </img>
      </div>

      <div className="card callout small-3" onClick={handleFamiliarityClick}>
        <Link to={`/videos/`}>
          <p>Advanced</p>
        </Link>
      <img className="image" src="https://i.imgur.com/5z3ZPwZ.png">
      </img>
      </div>

      <div className="card-thin callout small-9 top-bar-color center-text" onClick={handleFamiliarityClick}>
        <Link to={`/videos/`}>
          <p>All Videos</p>
        </Link>
      </div>
  
    </div>

    <div className="grid-x center-margin">

      <div className="card small-4" onClick={handleTypeClick}>
              <Link to={`/videos`}>
                <p>Primer</p>
              </Link>
        <img src="https://i.stack.imgur.com/wsmFt.png">
        </img>
      </div>

      <div className="card small-4" onClick={handleTypeClick}> 
              <Link to={`/videos`}>
                <p>Tutorial</p>
              </Link>
        <img src="https://staticg.sportskeeda.com/editor/2021/08/33fce-16287308813050-800.jpg">
        </img>
      </div>
    </div>

    <div className="grid-x center-margin">

        <div className="card small-4" onClick={handleTypeClick}>
              <Link to={`/videos/`}>
                <p>Story Mode</p>
              </Link>
            <img src={storyMode}>
            </img>
        </div>

        <div className="card small-4" onClick={handleTypeClick}>
              <Link to={`/videos/`}>
                <p>Multiplayer</p>
              </Link>
            <img src="https://styles.redditmedia.com/t5_38iv4/styles/mobileBannerImage_xm7tyq17qwa31.png">
            </img>
        </div>

    </div>
  </div>

  )
}

export default withRouter(HomeContainer)
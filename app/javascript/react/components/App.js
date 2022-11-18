import React, { useState, useEffect } from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import HomeContainer from './HomeContainer'
import VideosIndexContainer from './VideosIndexContainer'
import VideoContainer from './VideoContainer'
import CreatorsIndexContainer from './CreatorsIndexContainer'
import CreatorContainer from './CreatorContainer'

export const App = (props) => {

  const [familiarity, setFamiliarity] = useState("")
  
  return (
  
    <BrowserRouter>
      <Switch>
        <Route exact path="/">
          <HomeContainer 
            familiarity={familiarity}
            setFamiliarity={setFamiliarity} 
          />
        </Route>
        <Route exact path="/videos">
          <VideosIndexContainer
            familiarity={familiarity}
          />
        </Route> 
        <Route exact path="/videos/:id" component={VideoContainer} />
        <Route exact path="/creators" component={CreatorsIndexContainer} />
        <Route exact path="/creators/:id" component={CreatorContainer} />
      </Switch>
    </BrowserRouter>  

  )
}

export default App

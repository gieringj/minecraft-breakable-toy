import React, { useState, useEffect } from "react"
import { withRouter } from "react-router-dom"
import VideoTile from "./VideoTile"

const VideosIndexContainer = (props) => {

    const [videos, setVideos] = useState([])

    const fetchVideos = async () => {
        try {
        const response = await fetch(`/api/v1/videos`)
      
        if (!response.ok) {
            const errorMessage = `${response.status} ${response.statusText}`
            const error = new Error(errorMessage)
            throw (error)
        } else {
            const parsedVideos = await response.json()
            // { videos: [], user: []}
            setVideos(parsedVideos)
        }
        } catch (err) {
        console.log(`Error! - ${err}`)
        }
    }

  useEffect(() => {
    fetchVideos()
  }, [])
  
  const videoList = videos.map((video) => {
      if (props.familiarity === video.familiarity) {
        return (
          <div >
            <p>Happy Test</p>
              <VideoTile
                key={video.id}
                video={video}
              />
          </div>
        )
      }
      else {
        return(
          <div>
            <p>Sad Test</p>
          </div>
          )
          }
      end
  })
  
  return (
    <div>
      <h2>Video Index</h2>
      {videoList}
    </div>
  )
}

export default withRouter(VideosIndexContainer)




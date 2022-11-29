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
      if (props.familiarity === "All Videos") {
        return (
          <div >
              <VideoTile
                key={video.id}
                video={video}
              />
          </div>
        ) 
      }
      else if ((video.familiarity).includes(props.familiarity)) {
      console.log(video.familiarity)
        return (
          <div >
              <VideoTile
                key={video.id}
                video={video}
              />
          </div>
        )
      }
  }
  )
  
  return (
      <div>
        <div className="grid-x review-header">
          <h2>Video Index</h2>
        </div>
          <div className="grid-x">
            {videoList}
          </div>
      </div>
  )
}

export default withRouter(VideosIndexContainer)




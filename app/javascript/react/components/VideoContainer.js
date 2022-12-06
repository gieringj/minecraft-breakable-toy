import React, { useState, useEffect } from "react"
import { withRouter } from "react-router-dom"
import { render } from "react-dom";
import LiteYouTubeEmbed from 'react-lite-youtube-embed';
import 'react-lite-youtube-embed/dist/LiteYouTubeEmbed.css'

const VideoContainer = (props) => {

const [video, setVideo] = useState({ current_user: {} })

  const fetchVideo = async () => {
    try {
      const response = await fetch(`/api/v1/videos/${props.match.params.id}`)
      if (!response.ok) {
        const errorMessage = `${response.status} ${response.statusText}`
        const error = new Error(errorMessage)
        throw (error)
      } else {
        const parsedVideo = await response.json()
        setVideo(parsedVideo)
      }
    } catch (err) {
      console.log(`Error! - ${err}`)
    }
  }

  useEffect(() => {
    fetchVideo()
  }, [])
  
  return (
    <div className="margin-left">
      <h3>{video.title}</h3>
      <div className="video">
          <iframe 
            src={`https://www.youtube.com/embed/${video.url}`} 
            title="YouTube video player" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen>
          </iframe>
      </div>
      <div>
        <p> {video.familiarity}  |  {video.video_type}  |  {video.rating}/10  |  Uploaded: {video.upload_date}</p>
      </div>
    </div>
  )
}

export default withRouter(VideoContainer)